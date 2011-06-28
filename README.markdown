jQuery slide captcha system with jQuery & jQuery UI for Rails 3
=========================================================

__modify from: [QapTcha](http://www.myjqueryplugins.com/QapTcha "QapTcha")__

Support Env:
------------
Rails3.0.8+/Ruby1.8.7+

##Usage:

In Gemfile:

    gem 'rails_qaptcha'

Then:

    rails g rails_qaptcha:install

In layout:

    = stylesheet_link_tag :qaptcha
    = javascript_include_tag :qaptcha

In your haml page place the following div:

    #QapTcha

In your application.js:

    $(document).ready(function(){
        $('#QapTcha').QapTcha({autoRevert:true});
        // or
        $('.QapTcha').QapTcha({autoRevert:true});
    });

##If you want to control it in server side, you need to judge session[:iQapTcha]##