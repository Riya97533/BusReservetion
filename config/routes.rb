Rails.application.routes.draw do

  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end

  #  resources :tickets

resources :buses do
  resources :reservations, only: [:create]
end



  resources :users
  resources :roles
root "buses#index"
get "signup" => "users#new"

resource :session, only: [:new, :create, :destroy]



resources :buses do
  resources :tickets
end
resources :seats

# get "seats" => "seats#index"
# get "seats/:id" => "seats#show", as: "seat"
# get "seats/:id/edit" => "seats#edit", as: "edit_seat"
# get "seats/:new" => "seats#new"
# patch "seats/:id" => "seats#update"

# resources :buses do
#   resources :configurations, :only => [:create] do
#     post :setup_seats
#     resources :seats, :only => [:show]
#   end
# end

# 

      
end
    # resources :buses
#   root "busowners#index"


#   resource :sessions, only: [:new, :create, :destroy]
#   resources :busowners
#   get "signup" => "busowners#new"
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
