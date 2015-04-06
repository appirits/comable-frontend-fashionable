
    $(function(){
        $("#acMenu dt").on("click", function() {
            $(this).next().slideToggle();
            $(this).toggleClass("active");//追加部分
        });
    });


       $(function(){
        /!/ #で始まるアンカーをクリックした場合に処理
          $('a[href^=#]').click(function() {
           /!/ スクロールの速度
           | var speed = 400; // ミリ秒
           /!/ アンカーの値取得
           | var href= $(this).attr("href");
           /!/ 移動先を取得
           | var target = $(href == "#" || href == "" ? 'html' : href);
           /!/ 移動先を数値で取得
           | var position = target.offset().top;
           /!/ スムーススクロール
           | $('body,html').animate({scrollTop:position}, speed, 'swing');
           | return false;
        | });
     | });


      | $(function () {
        /!/ プリロード
        | for(var i = 1; i <= 5; i++) {
          | $('<img>').attr('src', '../img/product/shoes_01' + i + '.jpg');
        | }

        | $('.DetailColor img').click(function() {
         /!/　thumbをfulに置換
          | var img_full = $(this).attr('src').replace('DetailColor', 'sample');

          /!/ 画像をフェードイン、フェードアウトする
          | $('.sample img').fadeOut('fast', function() {
            | $(this).attr('src', img_full).fadeIn();
          | });

          /!/ 画像をフェードイン、フェードアウトしない
          /!/ $('#full img').attr('src', img_full);
        | });
      | });
