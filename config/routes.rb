Rails.application.routes.draw do
  resources :puts do
    collection do
      post :confirm
    end
  end
end
