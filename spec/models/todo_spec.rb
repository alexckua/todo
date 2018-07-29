require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe 'associations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(50) }
  end

  describe 'association' do
    it { is_expected.to have_many(:tasks) }
  end
end
