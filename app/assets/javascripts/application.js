// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require jquery-ui/slider
//= require_tree .

$(function() {
    $( "#slider" ).slider({
      range: true,
      min: 0,
      max: 400,
      values: [ 50, 300 ],
      slide: function( event, ui ) {
        $( "#amount_min" ).val(ui.values[ 0 ]);
        $( "#amount_max" ).val(ui.values[ 1 ]);
      }
    });
    $( "#amount_min" ).val($( "#slider" ).slider( "values", 0 ));
    $( "#amount_max" ).val($( "#slider" ).slider( "values", 1 ));
  });


//$( "#amount" ).val($( "#slider" ).slider( "values", 0 ) + "$" +
//      " - " + $( "#slider" ).slider( "values", 1 ) + "$");
