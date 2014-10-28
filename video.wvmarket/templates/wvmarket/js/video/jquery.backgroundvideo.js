    
    var setProportion = function () {
      var proportion = getProportion();
      $('#jp_container').width(proportion*720);
      $('#jp_container').height(proportion*405);
      
      centerVideo();
    }
    
    var getProportion = function () {
      var windowWidth = $(".player-spacer").width();
      var windowHeight = $(".player-spacer").height();
      var windowProportion = windowWidth / windowHeight;
      var origProportion = 720 / 405;
      var proportion = windowHeight / 405;
      
      if (windowProportion >= origProportion) {
        proportion = windowWidth / 720;
      }
      
      return proportion;
    }
    
    
    var centerVideo = function() {
      var centerX = (($(".player-spacer").width() >> 1) - ($("#jp_container").width() >> 1)) | 0;
      //var centerY = (($(".player-spacer").height() >> 1) - ($("#jp_container").height() >> 1)) | 0;

      $("#jp_container").css({ 'left': centerX, 'top': 0 });
      return;
      
    }

    var controlsPosition = function() {
      setProportion(); 
      $('.jp-controls').offset({ top: 80, left: $(".player-spacer").width() - 60 });
      $('.jp-header').offset({ top: 366});
      $('#circle').offset({ top: 350});
    }
    
    $(function() {

      controlsPosition();

    });

    $(window).resize(function() {

      setProportion(); 
      $('.jp-controls').offset({ top: 80, left: $(".player-spacer").width() - 60 });
      $('.jp-header').offset({ top: 366});
      $('#circle').offset({ top: 366});

    });


