# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mark do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:marked_at) }
  end

  context 'when valid' do
    it { expect(build(:mark)).to be_valid }
  end
end
