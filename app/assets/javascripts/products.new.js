window.addEventListener("load", function(){
  $(function(){
    $( '.name__text__field' ).on('click', function(){
      let name = $(this).val();
      if(name == 0){
        $('.name__text__field').css('border-color','red');
        $('.no-product__name').text('入力してください');
      }else{
        $('.name__text__field').css('border-color','');
        $('.no-product__name').text('');
      };
    });
    $( '.name__text__field' ).on('change',function(){
      let name = $(this).val();
      if(name == 0){
        $('.name__text__field').css('border-color','red');
        $('.no-product__name').text('入力してください');
      }else{
        $('.name__text__field').css('border-color','');
        $('.no-product__name').text('');
      };
    });
  })

  $('.content__text__area').on('click',function(){
    let description = $(this).val();
    if(description == 0){
      $('.content__text__area').css('border-color','red')
      $('.no-product__text').text('入力してください')
    }else{
      $('.content__text__area').css('border-color','')
      $('.no-product__text').text('')
    }
  });
  $('.content__text__area').on('change',function(){
    let description = $(this).val();
    if(description == 0){
      $('.content__text__area').css('border-color','red')
      $('.no-product__text').text('入力してください')
    }else{
      $('.content__text__area').css('border-color','')
      $('.no-product__text').text('')
    }
  });
  $('.select-area').on('click',function(){
    let status = $(this).val();
    if(status == 0){
      $('.select-area').css('border-color','red')
      $('no-product__condition').text('選択してください')
    }else{
      $('.select-area').css('border-color','')
      $('no-product__condition').text('')
    }
  });
  $('.select-area').on('change',function(){
    let status = $(this).val();
    if(status == 0){
      $('.select-area').css('border-color','red')
      $('no-product__condition').text('選択してください')
    }else{
      $('.select-area').css('border-color','')
      $('no-product__condition').text('')
    }
  });

  $('.select-area').on('click',function(){
    let send_price = $(this).val();
    if( send_price == 0){
      $('.select-area').css('border-color','red')
      $('.no-product__send_price').text('選択してください')
    }else{
      $('.select-area').css('border-color','')
      $('.no-product__send_price').text('')
    }
  });
  $('.select-area').on('change',function(){
    let send_price = $(this).val();
    if( send_price == 0){
      $('.select-area').css('border-color','red')
      $('.no-product__send_price').text('選択してください')
    }else{
      $('.select-area').css('border-color','')
      $('.no-product__send_price').text('')
    }
  });
  $( '.mix-price' ).on('click', function(){
    let price = $(this).val();
    if( price == 0){
      $('.mix-price').css('border-color','red')
      $('.no-product__price').text('300以上9999999以下で入力してください')
    }else{
      $('.mix-price').css('border-color','')
      $('.no-product__price').text('')
    }
  });
  $( '.mix-price' ).on('change',function(){
    let price = $(this).val();
    if( price == 0){
      $('.mix-price').css('border-color','red')
      $('.no-product__price').text('300以上9999999以下で入力してください')
    }else{
      $('.mix-price').css('border-color','')
      $('.no-product__price').text('')
    }
  });
  $('.select-area').on('click',function(){
    let shipping_date = $(this).val();
    if(shipping_date == 0){
      $('.select-area').css('border-color','red')
      $('.no-product__shipping_date').text('選択してください')
    }else{
      $('.select-area').css('border-color','')
      $('.no-product__shipping_date').text('')
    }
  });
  $('.select-area').on('change',function(){
    let shipping_date = $(this).val();
    if(shipping_date == 0){
      $('.select-area').css('border-color','red')
      $('.no-product__shipping_date').text('選択してください')
    }else{
      $('.select-area').css('border-color','')
      $('.no-product__shipping_date').text('')
    }
  });
});