Rails.application.routes.draw do
  namespace :api do
    get '/destinations' => 'destinations#index'

    get '/destinations/:id' => 'destinations#show'
    patch '/products/:id' => 'destinations#update'

  end
end
