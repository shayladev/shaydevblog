Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :post_admins, :path => "posts"
  # https://coderwall.com/p/7wkxdq/easily-rename-all-routes-for-a-rails-rest-resource
  # get 'post_admin/index'
  # get 'simple_pages/index'
  root 'home_page#index'
  # get 'simple_pages/post_view'
  get 'simple_pages/work'
  # get 'simple_pages/contact'
  # get 'post_admins/read/:id', to:'post_admins#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
