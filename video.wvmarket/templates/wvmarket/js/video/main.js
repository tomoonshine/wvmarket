
    $(function() {

        // ie placeholder fix
        if (navigator.userAgent.search("MSIE") >= 0){
            runPlaceholder();
        }

        // carousel 
        $('#Carousel').carousel({
            interval: 3000,
            pause: false
        });
        $('.carousel-inner .item :first').addClass('active'); 

        // tabs construct
        $('a[id="data-toggled"]').on('shown', function (e) {
            on_shown( e );
            on_update_hash( e );
        });
        $('a[id="data-untoggled"]').on('shown', function (e) {
            on_update_hash( e );
        });

        open_tab_by_hash();

        $('#Tabs a').click(function (e) {
                e.preventDefault();
                $(this).tab('show');
        });

        // fancyboxes
        $(".fancybox").fancybox({
            fitToView   : false,
            width       : 830,
            autoSize    : true,
            closeClick  : false,
            openEffect  : 'none',
            closeEffect : 'none'
        });

        $(".fancybox_iframe").fancybox({
            fitToView : false,
            width   : 830,
            autoSize  : true,
            closeClick  : false,
            openEffect  : 'none',
            closeEffect : 'none',
            scrolling : 'no',
            type: 'iframe'
        });

        $(".trigger1, .trigger2").fancybox({
            fitToView : true,
            width   : 'auto',
            autoSize  : true,
            closeClick  : true,
            openEffect  : 'none',
            closeEffect : 'none',
            scrolling : 'no',
            type: 'iframe'
        });

    });

    // Tabs
    
    function on_shown( e ) {

            var tab_id = e.target.hash;
            
            // unload unused tabs  content
            var unload_2 = true;
            var unload_3 = true;
            var unload_4 = true;
            var unload_5 = true;
            
            if ( tab_id == "#tabs-2" ) {
                unload_2 = false;
                url = url_2;
            }
            if ( tab_id == "#tabs-3" ) {
                unload_3 = false;
                url = url_3;
            }
            if ( tab_id == "#tabs-4" ) {
                unload_4 = false;
                url = url_4;
            }
            if ( tab_id == "#tabs-5" ) {
                unload_5 = false;
                url = url_5;
            }
            
            tb_unload( "#tabs-2", unload_2 );
            tb_unload( "#tabs-3", unload_3 );
            tb_unload( "#tabs-4", unload_4 );
            tb_unload( "#tabs-5", unload_5 );
            
            
            // load page with required content
            tb_load( tab_id, url );        
            
            return;
    }
    
    
    function on_update_hash( e ) {
        var tab_id = e.target.hash;
        var newhash = "";

        if ( tab_id == "#tabs-1" ) {
            newhash = 'tabs-1';
        }
        if ( tab_id == "#tabs-2" ) {
            newhash = 'tabs-2';             
        }
        if ( tab_id == "#tabs-3" ) {
            newhash = 'tabs-3';             
        }
        if ( tab_id == "#tabs-4" ) {
            newhash = 'tabs-4';             
        }
        if ( tab_id == "#tabs-5" ) {
            newhash = 'tabs-5';             
        }
        if ( tab_id == "#tabs-6" ) {
            newhash = 'tabs-6';             
        }

        parent.location.hash = newhash;

        $('html, body').animate({
             scrollTop: $("#Tabs").offset().top - 60
          }, 'fast');

        return;
    }


    /**
    * load id content by ajax
    */
    function tb_load( id, url ) {
        $( id ).load( url, function() {

            if(id == "#tabs-2"){
                $('#Carousel2').carousel({
                    interval: false
                }).on('slide', function (e) {
                    //
                }).on('slid', function (e) {
                   var item = $('#Carousel2 .item.active').index();
                   loadSlides(item);
                   $('.timeline-point').removeClass('act');
                   $('.timeline-point').eq(item).addClass('act');
                }); 

                $('.timeline-point-black').click(function() {
                    var point_count = $('.timeline-point-black').index( this );
                    $('#Carousel2').carousel(point_count);
                });

                $('.timeline .timeline-point :last').addClass('act');
                $('.carousel-inner .item :last').addClass('active');
                var item = $('#Carousel2 .item.active').index();
                loadSlides(item);

                /*
                var paper = new Raphael(document.getElementById('canvas_arrow_left2'), 30, 200);  
                var tetronimo = paper.path("M30 0L1 99M1 99L30 200");
                tetronimo.attr({stroke: '#000', 'stroke-width': 1}); 
                
                var paper = new Raphael(document.getElementById('canvas_arrow_right2'), 30, 200);  
                var tetronimo = paper.path("M0 0L29 99M29 99L0 200");
                tetronimo.attr({stroke: '#000', 'stroke-width': 1});  
                */

            }

          // alert('Load was performed.');

        });        
        return;
    }
    
    
    /**
    * unload id content
    */
    function tb_unload( id, unload ) {
        if ( ! unload ) 
            return;
        $( id ).html( "" );
        return;
    }

    function get_hash() {
        var hash = "";
        
        var page_url = window.location + "";       // Get window location and convert to string by adding ""
        var hash_value = page_url.match("#(.*)");  // Regular expression to match anything in the URL that follows #
        var amps;                                  // Create variable amps to hold ampersand array
        
        if( hash_value)                             // Check whether the search succeeded in finding something after the #
        {
            amps = (hash_value[1]).split("&");     // Split string into array using "&" as delimiter
            if ( amps.length > 0 ) {
                hash = amps[ 0 ];                           // Alert array which will contain value after # at index 0, and values after each & as subsequent indices
            }
        }
        return hash;
    }


    function open_tab_by_hash() {
           var hash = get_hash();
           if ( hash == 'tabs-1' ) {
               $('#Tabs a:eq(0)').tab('show');
               //$('#tabs-1').tab('show');
           }
           if ( hash == 'tabs-2' ) {
               $('#Tabs a:eq(1)').tab('show');
               //$('#tabs-2').tab('show');
           }
           if ( hash == 'tabs-3' ) {
               $('#Tabs a:eq(2)').tab('show');
               //$('#tabs-3').tab('show');
           }
           if ( hash == 'tabs-4' ) {
               $('#Tabs a:eq(3)').tab('show');
               //$('#tabs-4').tab('show');
           }
           if ( hash == 'tabs-5' ) {
               $('#Tabs a:eq(4)').tab('show');
               //$('#tabs-4').tab('show');
           }
           if ( hash == 'tabs-6' ) {
            if ($("#Tabs a").length == 6) {
               $('#Tabs a:eq(5)').tab('show');
               //$('#tabs-4').tab('show');
            } else {
               $('#Tabs a:eq(4)').tab('show');
            }
           }

           return;
    }
    
    // floor plane init
    function initSlide(purl, link, ismaphilight) {

        if (link == false) {
          link = $('.floors_list li:last a');
        }

        $.ajax({
                url     : "/catalog/flatlist/"+purl+"/",
                success: function(html){
                                $('.floors_list').find('li').removeClass("active");
                                $(link).parent().addClass("active");

                                $("#flatlist").empty().append(html);
                                
                                if (ismaphilight) {
                                    $('.map').maphilight();
                                }
                                
                                $('.tip1').css({
                                    position: 'absolute'
                                }).hide();

                                $('area').each(function(i) {
                                    $('area').eq(i).bind('mouseover', function(e) {
                                        $('.tip1').eq(i).show();
                                    });
                                    $('area').eq(i).bind('mousemove', function(kmouse) {
                                        $('.tip1').eq(i).offset({left: kmouse.pageX+20, top: kmouse.pageY+20});
                                    });
                                    $('area').eq(i).bind('mouseout', function() {
                                        $('.tip1').hide();
                                    });
                                });

                }
        });

    }

    function sortUnorderedList(ul, sortDescending) {
      if(typeof ul == "string")
        ul = document.getElementById(ul);

      // Idiot-proof, remove if you want
      if(!ul) {
        alert("The UL object is null!");
        return;
      }

      // Get the list items and setup an array for sorting
      var lis = ul.getElementsByTagName("LI");
      var vals = [];

      // Populate the array
      for(var i = 0, l = lis.length; i < l; i++)
        vals.push(lis[i].innerHTML);

      // Sort it
      vals.sort();

      // Sometimes you gotta DESC
      if(sortDescending)
        vals.reverse();

      // Change the list on the page
      for(var i = 0, l = lis.length; i < l; i++)
        lis[i].innerHTML = vals[i];
    }

    // placeholder function
    function runPlaceholder() {
        $('[placeholder]').focus(function() {
          var input = $(this);
          if (input.val() == input.attr('placeholder')) {
            input.val('');
            input.removeClass('placeholder');
          }
        }).blur(function() {
          var input = $(this);
          if (input.val() == '' || input.val() == input.attr('placeholder')) {
            input.addClass('placeholder');
            input.val(input.attr('placeholder'));
          }
        }).blur().parents('form').submit(function() {
          $(this).find('[placeholder]').each(function() {
            var input = $(this);
            if (input.val() == input.attr('placeholder')) {
              input.val('');
            }
          })
        });
    }