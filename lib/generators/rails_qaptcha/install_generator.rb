require 'rails/generators'

# =================================
# = rails g rails_qaptcha:install =
# =================================

module RailsQaptcha
  module Generators

    class InstallGenerator < Rails::Generators::Base
      
      source_root File.expand_path('../media', __FILE__)
      desc "Copies media files to main project"
      def copy_mongoid_yml_files
        copy_file "../media/images/*",      "public/images/qaptcha/*"
        copy_file "../media/javascripts/*", "public/javascripts/qaptcha/*"
        copy_file "../media/stylesheets/*", "public/stylessheets/qaptcha/*"
      end
    end

  end
end