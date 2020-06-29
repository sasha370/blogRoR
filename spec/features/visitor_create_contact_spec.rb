
require 'rails_helper'


# Новый тест с помощью Capibara
# посетить страницу Contacts и найти там строчку "....."
feature "Contact creation" do
  scenario "allows acces to contacts page" do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.all_contacts')
  end

  scenario "allows a guest to greate contact" do
    visit '/contacts/new'
    fill_in :contact_email, :with =>'test@twst.ru'
    fill_in :contact_message, :with =>'test message'
    click_button 'Save Contact'
    # ожидаем
    expect(page).to have_content I18n.t('contacts.all_contacts')

  end




end
