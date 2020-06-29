require 'spec_helper'
require 'rails_helper'

# Модель Article должна иметь множество коммитов
describe Article do
  describe "validates" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
  end

  describe " associashion" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      # создаем объект Article хитрым способом
      article = create(:article, title: 'Lorem ipsum')
      #assert - проверка
      expect(article.subject).to eq 'Lorem ipsum'
    end
  end


  describe '#last_comment' do
    it "returns the last comment" do
      # создаем статью уже с 3мя ккомментариями
      article = create(:article_with_comments)

      # проверка
      expect(article.last_comment.body).to eq "comment body 3"

    end
  end
end