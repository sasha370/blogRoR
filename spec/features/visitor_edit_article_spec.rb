require 'rails_helper'


# Новый тест с помощью Capibara
# посетить страницу Contacts и найти там строчку "....."
feature "Artical edit" do

  before(:each) do
    sign_up
    new_article_create
  end

  scenario "allows user have access to edit artical" do
    visit '/articles/1/edit'
    expect(page).to have_content I18n.t('articles.edit_article')
  end

  scenario "user edit article" do
    visit '/articles/1/edit'
    fill_in :article_title, :with => 'Edit title'
    fill_in :article_text, :with => 'Edit text'
    click_button 'Save Article'
    expect(page).to have_content 'Edit title'
    expect(page).to have_content 'Edit text'
  end
end

