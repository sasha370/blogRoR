Rails.application.routes.draw do



  devise_for :users
  root to: "home#index"

  get '/', to: 'home#index'
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'


  # Данная строчка показывает маршрут к Контролеру Contact у которого разрешены только просмотр и создание нового ( методы NEW и CREATE )
  # метод path_names перенаправляет стандартный new на пустую строчку, чтобы убрать из URL
  resources :contacts,  only: [:new, :create, :index]


  resources :articles do # в двнном случае DO добавлет вложенные маршруты для Comments
    resources :comments,  only: [:create]

  end


end
