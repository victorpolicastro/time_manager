# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

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
    it 'successfully creates an user' do
      expect(user).to be_valid
    end
  end
end
