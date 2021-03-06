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
//= require turbolinks
//= require_tree .

//= require jquery.min
//= require js/bootstrap.bundle.min
//= require rs-plugin-5/js/jquery.themepunch.tools.min
//= require rs-plugin-5/js/jquery.themepunch.revolution.min
//= require magnific-popup/jquery.magnific-popup.min
//= require waypoints/jquery.waypoints
//= require waypoints/sticky.min
//= require template
//= require custom
//= require isotope/imagesloaded.pkgd.min
//= require isotope/isotope.pkgd.min
//= countTo/jquery.countTo
//= slick/slick.min

jQuery(document).ready(function() {
    jQuery('.add-to-cart').click(function() {
        var iframe = document.createElement('my_cart_iframe');
        iframe.onload = function() { alert('Item added'); };
    });
});
