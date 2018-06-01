Rails.application.routes.draw do
  defaults format: :json do
    resources :articles, only: [:show, :create, :update, :destroy] do
      get :search, on: :collection

      resources :comments, only: [:index, :create]
    end
  end
end
