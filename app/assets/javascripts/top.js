;(function ( $, window, document, undefined ) {
$(function(){

$('.btn').on('click', function(){
  //ここでJSON取得
  //ex. $.getJSON('',function(){ /* ここに取得できた場合の処理を書く */ });
});

$('#brand_name').on('keyup', function(){
/*
  filter 処理
  ex. 
  var re = new RegExp(this.data('name'), 'i');
  $('.li_brand_size').each(function(){
    if (テキスト.match(re)) {
      $(this).fadeIn();
    } else {
      $(this).fadeOut();
    }
  });
*/
});

});
})(jQuery, window, document);
