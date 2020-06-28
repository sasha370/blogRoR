class CommentsController < ApplicationController
  def create
    # находим нужную статью по ее ШВ
    @article = Article.find(params[:article_id])
    # в ней создаем новый комментарий
    @article.comments.create({author: "Mike", body: "Привет"})

    # перенаправляем yg страницу с данным Статьей
    redirect_to article_path(@article)
  end


  # Создаем отдельный приватный метод, который разрешает передачу Полей из форму в нашу БД

  private
  # метод разрешвет принимать которые указанны вконце
  def comment_params
    params.require(:comment).permit(:author, :body)
  end

end
