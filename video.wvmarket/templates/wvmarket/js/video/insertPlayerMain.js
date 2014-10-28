
$(function() {
	// main map
	$("#hotspot-15").hotspot({ "show_on" : "mouseover" });

	// player
	//var i = Math.floor((Math.random()*2)+1);
	//if(i==1) {
	 vfile1 = "/files/video/e552a5d65d74e9b399e705b623602e41_98022_52269469.mp4";
	 vfile2 = "/files/video/e552a5d65d74e9b399e705b623602e41_98022_52269470.webm";
	 vfile3 = "/images/video/newflat.jpg";
	//} else {
	// vfile1 = "http://oikumena.s3.amazonaws.com/promo/3/4da9344d6660175472a48b349da93a53_98352_52344486.mp4";
	// vfile2 = "http://oikumena.s3.amazonaws.com/promo/3/4da9344d6660175472a48b349da93a53_98352_52344487.webm";
	// vfile3 = "http://www.oikumena-holding.ru/images/stubs/newflat.jpg";
	//}

	// 2 video

	vfile2_1 = "/files/video/e552a5d65d74e9b399e705b623602e41_98022_522694692.mp4";
	vfile2_2 = "/files/video/e552a5d65d74e9b399e705b623602e41_98022_522694702.webm";
	vfile2_3 = "/images/video/books.jpg";

	// 3 video

	//vfile3_1 = "/templates/wvmarket/video/4da9344d6660175472a48b349da93a53_98352_52344486.mp4";
    //vfile3_2 = "/templates/wvmarket/video/3/4da9344d6660175472a48b349da93a53_98352_52344487.webm";
    //vfile3_3 = "/templates/wvmarket/images/video/newflat.jpg";

    // 4 video

    //vfile4_1 = "/templates/wvmarket/video/c11dad7115a2bd0a0491f9e2624d0f82_98349_52344076.mp4";
    //vfile4_2 = "/templates/wvmarket/video/c11dad7115a2bd0a0491f9e2624d0f82_98349_52344077.webm";
    //vfile4_3 = "/templates/wvmarket/images/video/dr.jpg";

    if (Modernizr.touch){
		
		vfile1 = "/files/video/touch_dc7df2839f34f6eca630fac9e2b237f4_108672_55181045.mp4";
	 	vfile2 = "/files/video/touch_dc7df2839f34f6eca630fac9e2b237f4_108672_55181046.webm";

	// 	vfile2_1 = "/templates/wvmarket/video/touch_books_37927c85bd9f1e8ba5c4a0fa7501cc75_109311_55415177.mp4";
	//	vfile2_2 = "/templates/wvmarket/video/touch_books_37927c85bd9f1e8ba5c4a0fa7501cc75_109311_55415178.webm";

	//	vfile3_1 = "/templates/wvmarket/video/ouch_newflat_23c4d235b6df1ca03d80e36079d6082e_109314_55417529.mp4";
    //	vfile3_2 = "/templates/wvmarket/video/touch_newflat_23c4d235b6df1ca03d80e36079d6082e_109314_55417530.webm";

    //	vfile4_1 = "/templates/wvmarket/video/touch_dr_0781b4211989956a69fe97192269fd43_109312_55416177.mp4//";
    //	vfile4_2 = "/templates/wvmarket/video/touch_dr_0781b4211989956a69fe97192269fd43_109312_55416178.webm";

	}

    new jPlayerPlaylist({
			jPlayer: "#jp-jplayer",
	        cssSelectorAncestor: "#jp_container"
		}, [
			{
				m4v: vfile1,
		        webmv: vfile2,
		        poster: vfile3
			},
			{
				m4v: vfile2_1,
	            webmv: vfile2_2,
	          poster: vfile2_3
		//	},
	    //    {
		//		m4v: vfile3_1,
	    //        webmv: vfile3_2,
	    //        poster: vfile3_3
		//	},
	    //    {
		//		m4v: vfile4_1,
	    //       webmv: vfile4_2,
	     //       poster: vfile4_3
			}
		], {
        playlistOptions: {
           loopOnPrevious: true,
           autoPlay: true
        },
        loop: true,
        swfPath: "/templates/wvmarket/js/video/",
		supplied: "webmv, m4v",
		size: {
            height: "100%",
            width: "100%",
            cssClass: "jp_container"
        }
	});

	$('#jp_container').fadeIn(700);
	controlsPosition();

	if (Modernizr.touch){
	   var click = document.ontouchstart === undefined ? 'click' : 'touchstart';
	    var kickoff = function () {
	       $("#jp-jplayer").jPlayer("play");
	       document.documentElement.removeEventListener(click, kickoff, true);
	    };
	    document.documentElement.addEventListener(click, kickoff, true);
	}

});

var paper = new Raphael(document.getElementById('circle'), 500, 500);
var circle = paper.circle(120, 120, 120);
circle.attr("fill", "#000");
circle.attr("opacity", "0.6");
