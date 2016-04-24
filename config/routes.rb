Rails.application.routes.draw do

  # devise_for user authentication URI
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  # root for index page URI
  root "books#index"

  # Resources for CRUD ability URI
  resources :books do
    resources :reviews
  end

end
