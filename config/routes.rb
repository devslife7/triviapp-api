Rails.application.routes.draw do
  resources :friendships
  resources :game_questions
  resources :user_games
  resources :users, only: [:index, :show, :create]
  resources :games
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'auth#create'
end
