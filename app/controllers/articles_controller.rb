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
    if @article.save
      # вместо метода Create мы перенаправляем на метод SHOW с помощью юданной команды. это позволяет избавиться от Вьюхи Create
      redirect_to @article
    else
      # Если не создалась, то просто вызвращаем на стартовую страницу
      render action: 'new'
    end
  end

  # Метод отображает страницу с соответсвующим постом
  def show
    @article = Article.find(params[:id])
  end


  # В петоде Edit отображается тоже самое что и SHOW т.к. это просто показ карточки
  def edit
    @article = Article.find(params[:id])
  end


  # метод принимает на сервере данные из EDIT
  def update
    @article = Article.find(params[:id]) # ищем в БД необходимый пост
    if @article.update(article_params) # проверяем, правильно ли все апгреднулось
      redirect_to @article # если да, то перенаправляем на саму статью
    else
      render action: 'edit' # если нет, то возвращаем в форму редактирования
    end
  end



  # Создаем отдельный приватный метод, который разрешает передачу Полей из форму в нашу БД

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end