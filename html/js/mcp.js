Zepto(function($){
  color_matrix.initialize();
});

Event = undefined;

color_matrix = {
  initialize : function() {
    $('div.color').on('mouseover', function(e) {
      var target = $(e.target);
      var color  = color_matrix.rgb_to_hex( target.css('background-color') );

      if ( Event ) {
        clearTimeout(Event);
        Evemt = undefined;
      }

      color_matrix.show_color_code( color );
    });
  },

  show_color_code : function( color ) {
    var code   = $("div#color_code");

    code.html(color);

    if (Event === undefined) {
      code.animate({ opacity : 1.0 });
    }

    Event = setTimeout(function(){
      code.animate({ opacity : 0.0 });
      Event = undefined;
    }, 5000);
  },

  rgb_to_hex : function( color ) {
    var m = /rgba?\((\d+), (\d+), (\d+)/.exec( color );
    if (m) {
      var hex = ('#' + (m[1] << 16 | m[2] << 8 | m[3]).toString(16)).toUpperCase();
      return hex == "#0" ? "#000000" : hex;
    } else {
      return null;
    }
  }

};
