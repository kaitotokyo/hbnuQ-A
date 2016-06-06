/**
 * Created by Zou Yu on 2015/12/2.
 */

var maxHeight = 700;

$(function(){

    $(".dropdown > li").hover(function() {

        var $container = $(this),
            $list = $container.find("ul"),//列表元素
            $anchor = $container.find("a"),//在列表中获取超链接项目
            height = $list.height() * 1.1,       // 确保底部有足够的空间
            multiplier = height / maxHeight;     //平均分配每个高度

        // 保存容器的高度到origheight里面
        $container.data("origHeight", $container.height());

        //设置颜色
        $anchor.addClass("hover");

        // 保证下拉菜单在li下面
        $list
            .show()
            .css({
                paddingTop: $container.data("origHeight")
            });

        // 动画
        if (multiplier > 1) {
            $container
                .css({
                    height: maxHeight,
                    overflow: "hidden"
                })
                .mousemove(function(e) {
                    var offset = $container.offset();
                    var relativeY = ((e.pageY - offset.top) * multiplier) - ($container.data("origHeight") * multiplier);
                    if (relativeY > $container.data("origHeight")) {
                        $list.css("top", -relativeY + $container.data("origHeight"));
                    };
                });
        }

    }, function() {

        var $el = $(this);

        //让背后的东西变回去
        $el
            .height($(this).data("origHeight"))
            .find("ul")
            .css({ top: 0 })
            .hide()
            .end()
            .find("a")
            .removeClass("hover");

    });

});