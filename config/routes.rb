Rails.application.routes.draw do
  
  resources :qaptchas do
    member do
      get :check, :as => :check
    end
  end

end