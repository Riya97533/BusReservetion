Rails.application.routes.draw do

  # resources :seats
  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end
  resources :buses do
    resources :seats
  end
  #  resources :tickets

resources :buses do
  resources :reservations, only: [:create]
  

end




  resources :users
root "buses#index"
get "signup" => "users#new"

get "password/reset", to: "password_resets#new"
post "password/reset", to: "password_resets#create"
get "password/reset/edit", to: "password_resets#edit"
patch "password/reset/edit", to: "password_resets#update"

resource :session, only: [:new, :create, :destroy]



resources :buses do
  resources :tickets
end
resources :busowners

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
# #   get "signup" => "busowners#new"
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
