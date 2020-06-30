require 'rails_helper'


# Новый тест с помощью Capibara
# посетить страницу Contacts и найти там строчку "....."
feature "Artical creation" do

  before(:each) do
    sign_up
  end

  scenario "allows user  to visit new artical page" do
    visit new_article_path
    expect(page).to have_content I18n.t('articles.new_artiсle')

  end

  scenario "user creat new article" do
    new_article_create
    expect(page).to have_content I18n.t('articles.add_comment')
  end
end

