
require 'rails_helper'


# Новый тест с помощью Capibara
# посетить страницу Contacts и найти там строчку "....."
feature "Contact creation" do
  scenario "allows acces to contacts page" do
    visit '/contacts/new'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end
