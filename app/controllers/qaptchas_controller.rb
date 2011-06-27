# 
#  qaptchas_controller.rb
#  rails_qaptcha
#  
#  Created by Zhang Alex on 2011-06-27.
#  Copyright 2011 __blackanger.z@gmail.com__. All rights reserved.
#

class QaptchasController < ApplicationController
  respond_to :json

  def check
    iqaptcha = params[:iQapTcha]
    if iqaptcha.blank?
      session[:iQapTcha] = true
    else
      session[:iQapTcha] = false
    end
    respond_with(session[:iQapTcha])
  end #check

end
