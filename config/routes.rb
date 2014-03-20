Dorogaminina::Application.routes.draw do
# Статические страницы
  get "static_pages/index"

# Корневая страница
 root :to => 'static_pages#index'

end
