Rails.application.routes.draw do
  
  resources :users
  resources :roles
root "buses#index"
get "signup" => "users#new"
resource :session, only: [:new, :create, :destroy]

resources :buses
 
end
    # resources :buses
#   root "busowners#index"


#   resource :sessions, only: [:new, :create, :destroy]
#   resources :busowners
#   get "signup" => "busowners#new"
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
