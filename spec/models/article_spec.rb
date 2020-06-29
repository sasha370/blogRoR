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
end