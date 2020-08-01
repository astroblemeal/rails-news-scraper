Rails.application.routes.draw do
  resources :news do
    match '/scrape', to: 'news#scrape', via: :post, on: :collection
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  root to: 'news#index'
end
