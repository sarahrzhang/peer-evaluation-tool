Rails.application.routes.draw do
  get 'static_pages/home'
  root 'static_pages#home'
  resources :responses
  resources :evaluations
  resources :groups
  resources :projects
  resources :courses
  devise_for :instructors
  devise_for :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
