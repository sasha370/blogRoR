# данный контроллер был добавлен с помощью   rails g controller articles

class ArticlesController < ApplicationController

  def index
    @articles = Article.all

  end




  # вторым шагом надо прописать обработчик для действия new
  def new
  end

  # далее создаем файл в папке views/article? который автоматом будет привязан по названия к данному контроллеру

  # данный контролер\метод нужен для того, чтобы создать новую запись используя страницу new и кнопку submit
  def create

    @article = Article.new(article_params)
    # Проверяем, если переменная создалась, то мы ее записываем в БД
    if @article.valid?
      @article.save
    else
      # Если не создалась, то просто вызвращаем на стартовую страницу
      render plain: 'new'
    end

  end


  # Создаем отдельный приватный метод, который разрешает передачу Полей из форму в нашу БД

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end