require 'rails'

module RailsQaptcha
  class Engine < Rails::Engine
    
    # =====================================
    # = = javascript_include_tag :qaptcha =
    # =====================================
    config.before_initialize do
      config.action_view.javascript_expansions[:qaptcha] = %w(jquery-ui.js jquery.ui.touch.js QapTcha.jquery.js)
    end
    
  end
end