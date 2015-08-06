$ ->
  $ ->
    $('#acMenu dt').on 'click', ->
      $(this).next().slideToggle()
      $(this).toggleClass 'active'
      #追加部分
      return
    return
  $ ->
    # #で始まるアンカーをクリックした場合に処理
    $('a[href^=#]').click ->
      # スクロールの速度
      speed = 400
      # ミリ秒
      # アンカーの値取得
      href = $(this).attr('href')
      # 移動先を取得
      target = $(if href == '#' or href == '' then 'html' else href)
      # 移動先を数値で取得
      position = target.offset().top
      # スムーススクロール
      $('body,html').animate { scrollTop: position }, speed, 'swing'
      false
    return
