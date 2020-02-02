Rails.application.routes.draw do
  resources :parts do
    resources :items
  end
end
