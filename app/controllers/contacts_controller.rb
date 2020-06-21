class ContactsController < ApplicationController
  # данный метод нужен для получения простой страницы с сервера
  def new

  end

  # данный метод нужен для оюработки отправленных на сервер данных  и записи их в БД
  def create
    @contact = Contact.new(contact_params)
    @contact.save
  end


  # Создаем отдельный приватный метод, который разрешает передачу Полей из форму в нашу БД

  private
  def contact_params
    params.require(:contact).permit(:email, :message)
  end

end
