Rails.application.routes.draw do
  resources :urls, only [:new, :create]

  root to: 'urls#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
