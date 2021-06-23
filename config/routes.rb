Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get "/home/about" => "top#about" , as: "about"
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :book_image, only: [:new, :create, :index, :show, :destroy]
  #post 'books' => 'books#create'
  #get "user" => "users#edit" , as: "edit"
  resources :users, only: [:edit, :update, :show, :index]
end

