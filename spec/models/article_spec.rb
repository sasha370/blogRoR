require 'spec_helper'
require 'rails_helper'

# Модель Article должна иметь множество коммитов
describe Article do
  it {should have_many :comments}
end