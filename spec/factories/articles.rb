FactoryBot.define do

  # Фабрика, которая создает тестовую статью
  factory :article do
    title { "Article title" }
    text { "Article text" }


    # создаем статью с несколькими коментариями
    factory :article_with_comments do
      after :create do |article, evaluator|
        # сущность commit создать 3 раза
        create_list :comment, 3, article: article
      end
    end


  end



end