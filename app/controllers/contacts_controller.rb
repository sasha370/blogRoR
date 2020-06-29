class ContactsController < ApplicationController
  # данный метод нужен для получения простой страницы с сервера
  def index
    @contacts = Contact.all
  end

  def new
  end

  # данный метод нужен для оюработки отправленных на сервер данных  и записи их в БД
  def create
    @contact = Contact.new(contact_params)
    # Проверяем, если переменная создалась, то мы ее записываем в БД
    if @contact.save
      redirect_to contacts_path
    else
      # Если не создалась, то просто вызвращаем на стартовую страницу
      render action: "new"
    end
  end


  # Создаем отдельный приватный метод, который разрешает передачу Полей из форму в нашу БД
  private
  def contact_params
    params.require(:contact).permit(:email, :message)
  end

end
