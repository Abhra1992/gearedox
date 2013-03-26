// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require vendor/custom.modernizr
//= require jquery
//= require jquery_ujs
//= require foundation
(function($, window, undefined_) {
  "use strict";

  var $doc, Modernizr;
  $doc = $(document);
  Modernizr = window.Modernizr;
  $(document).ready(function() {
    return $(document).foundation();
  });
  if (Modernizr.touch && !window.location.hash) {
    return $(window).load(function() {
      return setTimeout((function() {
        return window.scrollTo(0, 1);
      }), 0);
    });
  }
})(jQuery, this);
