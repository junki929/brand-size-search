;(function ( $, window, document, undefined ) {
$(function(){

var $brandTmp = $('.div-brand').first().clone();
$('.div-brand').first().remove();

var bsfilter = function(){
  $bsname = $('#brand_name');
  var re = new RegExp($bsname.val(), 'i');
  var mh = 150;
  $('.div-brand').each(function(){
    var $this = $(this);
    if ($this.data('bs_name').match(re)) {
      $this.fadeIn();
      mh = Math.max(mh, $this.height());
    } else {
      $this.fadeOut();
    }
  });
  $('.div-brand:visible').height(mh);
};

$('.btn').on('click', function(){
  var after = function(){
    var $results = $('#results');
    $results.empty();
    var sizes = $(':checked').map(function(){ return this.value }).get().join('_')
    if (!sizes) { return false; }
    //console.log('get: '+'/search/'+sizes);
    $.getJSON('/search/'+sizes, function(data){
      //console.log(data);
      if (!data) {return false;}

      for (var i=0; i<data.length; i++) {
        var bs = data[i];
        var $tmp = $brandTmp.clone();
        $tmp.data('bs_name', bs.name);
        for (var pname in bs) {
          //console.log('pname: '+pname);
          //console.log('.bs_'+pname+', '+bs[pname]);
          $tmp.find('.bs_'+pname).text(bs[pname]);
        }
        $tmp.appendTo($results);
      }
      bsfilter();
    });
  };
  setTimeout(after, 100);
});

$('#brand_name').on('keyup', bsfilter);

});
})(jQuery, window, document);
