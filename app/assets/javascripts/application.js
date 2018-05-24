// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .

//= require jquery3
//= require popper
//= require bootstrap

$( document ).ready(function() {
  $('#img_product').hover(
    function(){
      // $(this).css("cursor","pointer");
      $('#images_div').show();
      // $(this).css('transform', 'scale(2, 2)')
    },
    function() {
      $('#images_div').hide();
    }
  );
});

//
// $('#img_product').mouseenter(function() {
//     $(this).css("cursor","pointer");
//     $(this).animate({width: "50%", height: "50%"}, 'slow');
// });
//
// $('#img_product').mouseleave(function() {
//     $(this).animate({width: "28%"}, 'slow');
// });
