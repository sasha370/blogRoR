require 'spec_helper'
require 'rails_helper'

# Модель Comment должна иметь только одну статью
describe Comment do
  it {should belong_to :article}
  it { should validate_length_of(:body).is_at_most(4000) }
end