# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:marks) }
  end

  context 'validations' do
    it 'validates presence of fields' do
      %i[email first_name last_name password].each do |field|
        is_expected.to validate_presence_of(field)
      end
    end

    it 'validates uniqueness of email' do
      is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity
    end
  end

  context 'when valid' do
    it { expect(build(:user)).to be_valid }
  end
end
