Rails.application.routes.draw do
  
  resources :qaptchas do
    collection do
      post :check, :as => :check
    end
  end

end