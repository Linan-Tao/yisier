$(document).ready(function(){
  $(".alert.alert-success").fadeOut(4000);


    $(".has_submenu > a").click(function(e){
      e.preventDefault();
      var menu_li = $(this).parent("li");
      var menu_ul = $(this).next("ul");

      if(menu_li.hasClass("open")){
        menu_ul.slideUp(350);
        menu_li.removeClass("open")
      }
      else{
        $(".nav > li > ul").slideUp(350);
        $(".nav > li").removeClass("open");
        menu_ul.slideDown(350);
        menu_li.addClass("open");
      }
    });


    $("#order-parts-category-id").focus(function(){
      alert(123);
    });
  });