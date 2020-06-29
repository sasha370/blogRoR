require 'spec_helper'
require 'rails_helper'

# Данные тесты использую Gem shoulda/ который позволяет тестировать Модели
# В модели Contact мы проверяем присутствует ли валидация на поля Email и Message
#
describe Contact do
  it  { should validate_presence_of(:email) }
  it  { should validate_presence_of(:message) }
end