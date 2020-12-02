Rails.application.routes.draw do

  resources :school_reviews
  resources :manga_reviews
  resources :book_reviews
  resources :school_stuffs
  resources :books
  resources :mangas
  
  get 'users/show'
  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  # devise_for :users,  :controllers => {:registrations=> "registrations"}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
