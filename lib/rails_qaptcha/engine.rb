require 'rails'

module RailsQaptcha
  class Engine < Rails::Engine
    
    # =====================================
    # = = javascript_include_tag :qaptcha =
    # = = stylesheet_link_tag    :qaptcha =
    # =====================================
    config.before_initialize do
      config.action_view.javascript_expansions[:qaptcha] = %w(qaptcha/jquery-ui.js qaptcha/jquery.ui.touch.js qaptcha/QapTcha.jquery.js)
      config.action_view.stylesheet_expansion[:qaptcha]  = %w(QapTcha.jquery.css)
    end
    
  end
end