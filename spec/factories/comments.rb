FactoryBot.define do

  # Фабрика, которая создает тестовую статью
  factory :comment do
    author { "Comment author" }

    # Конструктор для фабрики; Создает поле body и присваивает вместо N порядковый номер на ватомате
    # Далее это используется  в фабрике Article
    sequence(:body){|n| "comment body #{n}"}
  end
end