$ ->
  # 画像切り替え
  $ ->
    i = 1
    while i <= 5
      $('<img>').attr 'src', '../img/product/shoes_01' + i + '.jpg'
      i++
    $('.DetailColor img').click ->
      #　thumbをfulに置換
      img_full = $(this).attr('src').replace('DetailColor', 'sample')
      # 画像をフェードイン、フェードアウトする
      $('.sample img').fadeOut 'fast', ->
        $(this).attr('src', img_full).fadeIn()
        return
      # 画像をフェードイン、フェードアウトしない
      # $('#full img').attr('src', img_full);
      return
    return
  #最大表示数切り替え
  $ ->
    #
    $('select#per').change ->
      location.href= $(this).val()

  #並び替え（新着、価格）
  $ ->
    #
    $('select#order_by').change ->
      location.href= $(this).val()

  #在庫の有無
  $ ->
    #
    $('select#stock').change ->
      location.href= $(this).val()

