;(function ( $, window, document, undefined ) {
$(function(){

var $itemTmp = $('.div-item').first().clone();
$('.div-item').first().remove();
var $brandTmp = $('.div-brand').first().clone();
$('.div-brand').first().remove();

var safename = function(name){//brand name to class safe name
  return name.replace(/[ &]+/g,'-');
};

var bsfilter = function(){
  $bsname = $('#brand_name');
  var re = new RegExp($bsname.val(), 'i');
  $('.div-brand').each(function(){
    var $this = $(this);
    if ($this.data('bs-name').match(re)) {
      $this.fadeIn();
    } else {
      $this.fadeOut();
    }
  });
};

$('.btn').on('click', function(){
  var after = function(){
    var $results = $('#results');
    $results.empty();

    //build query from class=size-input
    var q = '';
    $('.size-input').each(function(){
      var $this = $(this);
      var sizes = $this.find(':checked').map(function(){ return this.value }).get().join('_')
      q += q ? '&' : '?';//if first return ?
      q += $this.data('size-for') + '=' + sizes
    });
    console.log('get: '+'/search'+q);
    $.getJSON('/search'+q, function(data){
      console.log(data);
      if (!data) {return false;}

      for (var i=0; i<data.length; i++) {
        var bs = data[i];

        var $bt = $('.'+safename(bs.name));
        if ($bt.size()) {//override
        } else {//first time
          $bt = $brandTmp.clone();
          $bt.addClass(safename(bs.name));
          $bt.data('bs-name', bs.name);
          $bt.appendTo($results);
        }

        var $it = $bt.find('.'+bs.item);
        if (bs.name == 'THOM BROWNE') {
          console.log(bs.item);
        }
        if ($it.size()) {
          $it.find('.bs_result').first().clone().appendTo($it);
        } else {
          $it = $itemTmp.clone();
          $it.addClass(bs.item);
          $it.appendTo($bt);
        }

        for (var pname in bs) {
          //console.log('pname: '+pname);
          //console.log('.bs_'+pname+', '+bs[pname]);
          $bt.find('.bs_'+pname+':last').text(bs[pname]);
        }
      }
      bsfilter();
    });
  };
  setTimeout(after, 100);
});

$('#brand_name').on('keyup', bsfilter);

});
})(jQuery, window, document);
