
# данный контроллер был добавлен с помощью   rails g controller articles

class ArticlesController < ApplicationController

  # вторым шагом надо прописать обработчик для действия new
  def new
  end
  # далее создаем файл в папке views/article? который автоматом будет привязан по названия к данному контроллеру

  # данный контролер\метод нужен для того, чтобы создать новую запись используя страницу new и кнопку submit
  def create
    render plain: params[ :article]
  end

end
cc