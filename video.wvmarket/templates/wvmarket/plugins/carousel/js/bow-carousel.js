$(document).ready(function () {

    $.fn.bowCarousel = function (settings) {



        settings = $.extend({}, $.fn.bowCarousel.defaults, settings);

        this.each(function () {

            var duration = 500;

            var v_this = $(this);
            var carousel_cloud = v_this.find(".carousel_cloud");
            var items_link = carousel_cloud.find("a");
            var links_quntity = carousel_cloud.find("a").length;

            var animation = true;
            var animation_count = 0;

            items = [
			{
			// 1
			    "position": "absolute",
			    "left": 112,
			    "top": 0,
			    "width": 120,
			    "height": 80,
			    "z-index": 2
			},
			{
			// 2
			    "position": "absolute",
			    "left": 50,
			    "top": 12,
			    "width": 120,
			    "height": 80,
			    "z-index": 4
			},
			{
			// 3
			    "position": "absolute",
			    "left": 0,
			    "top": 24,
			    "width": 130,
			    "height": 83,
			    "z-index": 6
			},
			{
			// 2
			    "position": "absolute",
			    "left": 23,
			    "top": 40,
			    "width": 130,
			    "height": 85,
			    "z-index": 8
			},
			{
			// 1
			    "position": "absolute",
			    "left": 70,
			    "top": 60,
			    "width": 135,
			    "height": 88,
			    "z-index": 10
			},
			{
 			// 2
			    "position": "absolute",
			    "left": 130,
			    "top": 82,
			    "width": 143,
			    "height": 95,
			    "z-index": 12
			},
			{
			// 3
			    "position": "absolute",
			    "left": 300,
			    "top": 80,
			    "width": 153,
			    "height": 103,
			    "z-index": 14
			},
			{
			// 4
			    "position": "absolute",
			    "left": 478,
			    "top": 82,
			    "width": 143,
			    "height": 95,
			    "z-index": 12
			},
			{
			// 5
			    "position": "absolute",
			    "left": 544,
			    "top": 60,
			    "width": 135,
			    "height": 88,
			    "z-index": 10
			},
			{
			// 6
			    "position": "absolute",
			    "left": 596,
			    "top": 40,
			    "width": 130,
			    "height": 85,
			    "z-index": 8
			},
			{
			// 7
			    "position": "absolute",
			    "left": 618,
			    "top": 24,
			    "width": 130,
			    "height": 83,
			    "z-index": 6
			},
			{
			// 8
			    "position": "absolute",
			    "left": 567,
			    "top": 12,
			    "width": 120,
			    "height": 80,
			    "z-index": 4
			},
			{
			// 9	
			    "position": "absolute",
			    "left": 512,
			    "top": 0,
			    "width": 120,
			    "height": 80,
			    "z-index": 2
			},
			{
			// 10
			    "position": "absolute",
			    "left": 512,
			    "top": 0,
			    "width": 120,
			    "height": 80,
			    "z-index": 0,
			    "visibility": 'hidden'
			}
            ]

            items_count = items.length;


            var attr_class_item = function () {

                items_link = carousel_cloud.find("a");

                for (var i = 0; i < links_quntity; i++) {
                    items_link.eq(i).attr({ "class": "logo_" + i })
                }

            }


            var move_left = function () {

                animation_count = 0;

                for (var i = 0; i < items_count - 1; i++) {

                    var css = "";

                    if (i == 0) {

                        num = items_count - 1;

                    } else {

                        num = i - 1;

                    }

                    items_link.eq(9).children("img").css({ "visibility": "visible" });

                    items_link.eq(0).css({ "visibility": "hidden" });

                    animation = false;

                    items_link.eq(i).animate({
                        "width": items[num]['width'],
                        "height": items[num]['height'],
                        "top": items[num]['top'],
                        "left": items[num]['left'],
                        "z-index": items[num]['z-index']
                    }, duration, function () {


                        items_link.eq(0).appendTo(carousel_cloud);

                        setTimeout(function () {

                            items_link.eq(13).css({ "visibility": "visible" });

                            animation_count++;
                            if (animation_count >= items_count - 1) {
                                items_link.children().css({ "visibility": "" });
                                attr_class_item();
                                animation = true;
                            }

                        }, 0)

                    });


                }

            }


            var move_right = function () {

                animation_count = 0;

                for (var i = 0; i < items_count; i++) {

                    var css = "";

                    if (i == items_count - 1) {

                        num = 0;
                        i = links_quntity - 1;

                    } else {

                        num = i + 1;

                    }



                    items_link.eq(3).children("img").css({ "visibility": "visible" });
                    items_link.eq(12).css({ "visibility": "hidden" });

                    animation = false;

                    items_link.eq(i).animate({
                        "width": items[num]['width'],
                        "height": items[num]['height'],
                        "top": items[num]['top'],
                        "left": items[num]['left'],
                        "z-index": items[num]['z-index']
                    }, duration, function () {

                        items_link.eq(links_quntity - 1).prependTo(carousel_cloud);

                        setTimeout(function () {

                            items_link.eq(0).css({ "visibility": "visible" });

                            animation_count++;

                            if (animation_count >= items_count - 1) {
                                attr_class_item();
                                items_link.children().css({ "visibility": "" });
                                animation = true;
                            }

                        }, 0)


                    });


                }

            }


            for (var i = 0; i < links_quntity; i++) {

                var css = "";

                if (items[i] != undefined) {

                    num = i;

                } else {

                    num = items_count - 1;

                }


                for (property in items[num]) {

                    css += property + ":" + items[num][property];

                    switch (property) {
                        case "left":
                        case "top":
                        case "width":
                        case "height": {
                            css += "px";
                            break;
                        }
                    }

                    css += "; ";


                }

                items_link.eq(i).attr({ "style": css })
                attr_class_item();

            }


            if (links_quntity >= items_count) {

                v_this.find(".carousel_cloud_left_but, .carousel_cloud_right_but").css({ "display": "block" });

            } else {

                items_link.toggleClass("logo_link");

            }


            v_this.on("click", ".carousel_cloud_right_but", function () {

                if (animation) move_left();

                return false;

            })

            v_this.on("click", ".carousel_cloud_left_but", function () {

                if (animation) move_right();

                return false;

            })

			
			var interval = setInterval(move_left, 2000)
			
        })

    }

});


//$.fn.bowCarousel.defaults = {};


