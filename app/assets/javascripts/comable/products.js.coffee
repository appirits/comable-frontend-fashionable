$ ->
  # 画像切り替え
  $ ->
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
    $('#per_page select').change ->
      $(this).closest('form').submit()

  #並び替え（新着、価格）
  $ ->
    #
    $('#order_by select').change ->
      $(this).closest('form').submit()

  #在庫の有無
  $ ->
    #
    $('#filter_by_stocks select').change ->
      $(this).closest('form').submit()

