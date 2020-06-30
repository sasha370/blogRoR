
require 'rails_helper'


# Новый тест с помощью Capibara
# посетить страницу Contacts и найти там строчку "....."
feature "Comment creation" do

  before(:each) do
    sign_up
    new_article_create
  end

  scenario "allows access to comment page" do
    visit '/articles/1'
    expect(page).to have_content 'Test title'
  end

  scenario "allows a guest to greate contact" do
    visit '/articles/1'
    fill_in :comment_body, :with =>'test comment'

    click_button 'Create Comment'
    # ожидаем
    expect(page).to have_content 'test comment'

  end




end
