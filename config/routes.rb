Rails.application.routes.draw do
  #/
  root 'url_shorteners#index'

  resources :url_shorteners

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
