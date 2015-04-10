//[if IE]
      <meta http-equiv="X-UA-Compatible" content="IE=edge"
    //[if lt IE 9]
      <script src="js/html5shiv-printshiv.js"></script
      <script src="//ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script
    script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js?ver=1.8.3"
    javascript:
      $(function(){
        $("#acMenu dt").on("click", function() {
          $(this).next().slideToggle();
            $(this).toggleClass("active");//追加部分
        });
      });
    javascript:
      $(function(){
        // #で始まるアンカーをクリックした場合に処理
        $('a[href^=#]').click(function() {
          // スクロールの速度
          var speed = 400; // ミリ秒
          // アンカーの値取得
          var href= $(this).attr("href");
          // 移動先を取得
          var target = $(href == "#" || href == "" ? 'html' : href);
          // 移動先を数値で取得
          var position = target.offset().top;
          // スムーススクロール
          $('body,html').animate({scrollTop:position}, speed, 'swing');
          return false;
        });
      });
    /! 画像切り替え
    javascript:
      $(function () {
        // プリロード
        for(var i = 1; i <= 5; i++) {
          $('<img>').attr('src', '../img/product/shoes_01' + i + '.jpg');
          }

          $('.DetailColor img').click(function() {
          //　thumbをfulに置換
          var img_full = $(this).attr('src').replace('DetailColor', 'sample');

          // 画像をフェードイン、フェードアウトする
          $('.sample img').fadeOut('fast', function() {
            $(this).attr('src', img_full).fadeIn();
            });

          // 画像をフェードイン、フェードアウトしない
          // $('#full img').attr('src', img_full);
          });
      });

