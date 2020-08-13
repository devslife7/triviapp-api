Rails.application.routes.draw do
  resources :game_questions
  resources :user_games
  resources :users
  resources :games
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
