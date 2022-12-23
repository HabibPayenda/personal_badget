Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do
    authenticated :user do
      root 'categories#index', as: :authenticated_root
    end
    unauthenticated do
      root 'users#splash', as: :unauthenticated_root
    end
  end

  resources :categories, only: %i[index new create] do
    resources :transaktions, only: %i[index new create] do
      resources :transaktion_categories, only: [:create]
    end
  end
end
