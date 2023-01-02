Rails.application.routes.draw do
  get 'users/index'
  root to: "users#index"
  resources :users do
    collection do
      get :user_to_all_rooms
      get :reserved_rooms
    end
  end
  resources :rooms do
  end
  resources :reservations do
    member do
      post :confirm
    end
  end


  get 'reservations/index'
  get 'rooms/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
