Rails.application.routes.draw do
  devise_for :users
  root 'books#all_books'
  get '/all_books', to: 'books#all_books'
  patch '/borrow_book/:id' => 'books#borrow_book'

  resources :books do
    member do
      patch 'borrow'
    end
  end


end
