
require 'rails_helper'


# Новый тест с помощью Capibara
feature "Contact creation" do
  scenario "allows acces to contacts page" do
    visit '/contacts'
    expect(page).to have_content 'Список всех контактов'
  end
end
