Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin_user', as: 'rails_admin'
  mount ActionCable.server => '/cable'
  resources :events, only: [:index] 
  get "/events/push"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
