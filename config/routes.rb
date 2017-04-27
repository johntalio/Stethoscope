Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#search'
  get '/doctors' => 'doctors#index'
  get '/doctors/:id' => 'doctors#show', as: 'doctor'
end
