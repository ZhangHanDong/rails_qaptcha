# 
#  qaptchas_controller.rb
#  rails_qaptcha
#  
#  Created by Zhang Alex on 2011-06-27.
#  Copyright 2011 __blackanger.z@gmail.com__. All rights reserved.
#

class QaptchasController < ApplicationController

  def check
    iqaptcha = params[:iQapTcha]
    if iqaptcha.blank?
      session[:iQapTcha] = true 
      msg = "Form can be submited!"
    else
      session[:iQapTcha] = false
      msg = "Form can not be submited!"
    end
    @result = {:check => session[:iQapTcha], :msg => msg}
    respond_to do |format|
      format.json { render :json => @result.to_json }
    end
  end #check

end
