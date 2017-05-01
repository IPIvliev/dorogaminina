Dorogaminina::Application.routes.draw do

  resources :tshirts

  mount RailsAdmin::Engine => '/kro', :as => 'rails_admin'

  resources :posts


  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :users
  resources :zvenos

# Проплата
  scope 'robokassa' do
    match 'paid'    => 'robokassa#paid',    :as => :robokassa_paid # to handle Robokassa push request

    match 'success' => 'robokassa#success', :as => :robokassa_success # to handle Robokassa success redirect
    match 'fail'    => 'robokassa#fail',    :as => :robokassa_fail # to handle Robokassa fail redirect
  end

# Статические страницы
  get "static_pages/index"
  match "/index.html", :to => "static_pages#index"

# Все фотографии
  match "/readmore.html", :to => "static_pages#readmore"

# Служебный раздел
  match "/statistics.html", :to => "static_pages#statistics"
  match "user/edit_paid", :to => "requests#edit_paid"
  match "user/edit_can", :to => "zvenos#edit_can"
  match "user/dostavka_otkaz", :to => "users#dotkaz", :as => :user_dotkaz
  match 'advice/create', to: 'static_pages#add_advice'

# Корневая страница
 root :to => "static_pages#index"

end