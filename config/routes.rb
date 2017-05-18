Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin_user', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create]
      resource :session, only: [:destroy]
      resources :users, only: [:create]
      resources :categories, only: [:index]
      resources :user_categories, only: [:create]
      resources :events, only: [:index]
    end
end

end
