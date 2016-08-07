// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
// usage masonry
//= require masonry/jquery.masonry
// masonry: contents generation helper
//= require masonry/box-maker
//= require masonry/jquery.loremimages.min

// 스크롤 내렸을때 헤더 숨김
var didScroll;
var lastScrollTop = 0;
var delta = 5;
var navbarHeight = $('.topOfTop').outerHeight();

$(window).scroll(function(event){
    didScroll = true;
});

setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

function hasScrolled() {
    var st = $(this).scrollTop();

    if(Math.abs(lastScrollTop - st) <= delta)
        return;

    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        $('.topOfTop').removeClass('nav-down').addClass('nav-up');
        $('.navbar-fixed-top').css("top",0);
    } else {
        // Scroll Up
        if(st + $(window).height() < $(document).height()) {
            $('.topOfTop').removeClass('nav-up').addClass('nav-down');
            $('.navbar-inverse.navbar-fixed-top').css("top",50);
        }
    }
    lastScrollTop = st;
}
