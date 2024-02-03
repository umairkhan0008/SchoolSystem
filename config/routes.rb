Rails.application.routes.draw do

  resources :classrooms, :students, :teachers

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  root "main#index"
end
