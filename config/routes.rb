Dorogaminina::Application.routes.draw do


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

# Корневая страница
 root :to => "static_pages#index"

end
