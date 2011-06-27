jQuery captcha system with jQuery & jQuery UI for Rails 3
=========================================================

__modify from: [QapTcha](http://www.myjqueryplugins.com/QapTcha "QapTcha")__

Support Env:
------------
Rails3.0.8+/Ruby1.8.7+

Usage:
------

1. rails g rails_qaptcha:install
2. in layout:
  * = stylesheet_link_tag :qaptcha
  * = javascript_include_tag :qaptcha
3. in your haml page place the following div:

    * #QapTcha

4. in your application.js:

>$(document).ready(function(){
>
>    $('#QapTcha').QapTcha({autoRevert:true});
>
>    // or
>
>    $('.QapTcha').QapTcha({autoRevert:true});
>});

——If you want to control it in server side, you need to judge session[:iQapTcha]——