Rails.application.routes.draw do
  get '/', to: 'home#index'


  # Данная строчка показывает маршрут к Контролеру Contact у которого разрешены только просмотр и создание нового ( методы NEW и CREATE )
  resource :contacts,  only: [:new, :create]


    resources :articles


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
