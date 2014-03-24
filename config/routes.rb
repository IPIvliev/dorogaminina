Dorogaminina::Application.routes.draw do


  resources :users


  resources :zvenos




# Статические страницы
  get "static_pages/index"
  match "/index.html", :to => "static_pages#index"

# Корневая страница
 root :to => 'static_pages#index'

end
