Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#search'
  get '/doctors' => 'doctors#index'
  get '/doctors/:id' => 'doctors#show', as: 'doctor'

  get '/users/new' => 'users#new'
  post '/users' => 'users#create', as: 'users'
  get '/users/:id' => 'users#show', as: 'user'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create', as: 'logins'
  delete '/logout' => 'sessions#destroy'

  get '/records/new' => 'records#new'
  post '/records' => 'records#create', as: 'records'
  delete '/records/:id' => 'records#destroy'

  get '/drug_searches/search' => 'drug_searches#search', as: 'search'
  get '/drugs/index' => 'drugs#index'
  get '/drugs/:id' => 'drugs#show', as: 'drug'

  get '/prescriptions/new' => 'prescriptions#new'
  post '/prescriptions' => 'prescriptions#create', as: 'prescriptions'
  delete '/prescriptions/:id' => 'prescriptions#destroy'
end
