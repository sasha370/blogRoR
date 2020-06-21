Rails.application.routes.draw do
  get '/', to: 'home#index'


  # Данная строчка показывает маршрут к Контролеру Contact у которого разрешены только просмотр и создание нового ( методы NEW и CREATE )
  # метод path_names перенаправляет стандартный new на пустую строчку, чтобы убрать из URL
  resource :contacts,  only: [:new, :create], path_names:  {:new => ''}
  resource :terms,  only: [:new], path_names:  {:new => ''}
  resource :about,  only: [:new], path_names:  {:new => ''}

  resources :articles


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
