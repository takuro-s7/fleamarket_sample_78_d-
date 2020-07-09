$(function(){
  $('#product_price').on('change', function(){
    let tax = $('#product_price').val();
    $('.commission-money').text(Math.ceil(tax * 0.1) + "円");
    $('.profit-money').text(Math.ceil(tax - (tax * 0.1)) + "円");
  });
});