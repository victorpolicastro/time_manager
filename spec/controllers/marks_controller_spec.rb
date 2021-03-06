# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Metric/BlockLength
RSpec.describe MarksController do
  let!(:user) { create(:user) }
  let!(:mark) { create(:mark, user: user) }

  before { sign_in user }

  describe 'GET #index' do
    it 'responds with 200' do
      get :index

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #new' do
    it 'responds with 200' do
      get :new

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST #create' do
    it 'responds with 302' do
      post :create, params: {
        mark: {
          date: Date.current, time: Time.current, kind: :exit
        }
      }

      expect(response).to have_http_status(:found)
      expect(Mark.count).to eq(2)
    end
  end
end
# rubocop:enable Metric/BlockLength
