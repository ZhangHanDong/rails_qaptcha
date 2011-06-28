require 'rails/generators'

# =================================
# = rails g rails_qaptcha:install =
# =================================

module RailsQaptcha
  module Generators

    class InstallGenerator < Rails::Generators::Base
      
      source_root File.expand_path('../media', __FILE__)
      desc "Copies media files to main project"
      def copy_media_files
        copy_file "../media/images/bg_QapTcha.png",          "public/stylesheets/image/qaptcha/bg_QapTcha.png"
        copy_file "../media/images/sprites.png",             "public/stylesheets/image/qaptcha/sprites.png"
        copy_file "../media/javascripts/jquery-ui.js",       "public/javascripts/qaptcha/jquery-ui.js"
        copy_file "../media/javascripts/jquery.ui.touch.js", "public/javascripts/qaptcha/jquery.ui.touch.js"
        copy_file "../media/javascripts/QapTcha.jquery.js",  "public/javascripts/qaptcha/QapTcha.jquery.js"
        copy_file "../media/stylesheets/QapTcha.jquery.css", "public/stylesheets/qaptcha/QapTcha.jquery.css"
      end
    end

  end
end