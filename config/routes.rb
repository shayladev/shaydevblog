Rails.application.routes.draw do
  resources :post_admins
  get 'post_admin/index'
  get 'simple_pages/index'
  root 'home_page#index'
  get 'simple_pages/post_view'
  get 'simple_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
