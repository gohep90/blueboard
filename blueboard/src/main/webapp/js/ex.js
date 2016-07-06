// JavaScript Document
(function($){
    $.fn.extend({
        manyGnb: function(options) {
             
            var defaults = {
                type :  "hover",
            }
            var options = $.extend(defaults, options);
            return this.each(function(){
                var etype = options;
                var obj = $(this); //대상
                $("ul:visible", obj).hide();
                $(this).find("a").keyup(opendepth); // 웹접근성을위한 keyup메서드
                $(this).find("a").on(etype.type, opendepth); // 마우스hover시
                $(this).find("ul").css({
                    position : "absolute",
                    left : "0"
                    });
                 
                autosort();
                $(window).resize(autosort); 
                /* 오픈 메인함수 */
                function opendepth(event){
                     
                    $(this).siblings("ul").children("li").css("width",obj.width()/$(this).siblings("ul").children("li").length);
                    if($(this).siblings("ul").is(":hidden")){ //대상의 자식 ul의 이미지가 보이지 않는다면
                        $(this).parent().siblings("li").each(function(){
                            $(this).find("ul").hide(); // 대상의 자식중 보이는 ul의 초기화(모두 감춘다)
                        });
                        $(this).siblings("ul").show(); // 대상의 자식 ul를 보이게 한다.
                        }else{ // 대상의 자식 ul의 이미지가 보인다면
                            $(this).parent().siblings("li").each(function(){
                                $(this).find("ul").hide(); // 대상의 자식중 보이는 ul의 초기화(모두 감춘다)
                            }); // 대상의 자식중 보이는 ul의 초기화(모두 감춘다) 
                        }
                    }
 
                /* 메뉴갯수에따른 li 너비 균등하게 분배 */
                function autosort(){
                    obj.find("> li").css("width",obj.width()/obj.find(">li").length);
                }
                 
                /* 마우스 떠날시 초기화 */
                obj.mouseleave(function(){
                    obj.find("ul").hide();
                });
            });
        }
    });
})(jQuery);