# frozen_string_literal: true

class Mark < ApplicationRecord
  belongs_to :user

  validates :date, :datetime, :kind, presence: true

  enum kind: { entrance: 'entrance', exit: 'exit' }
end
