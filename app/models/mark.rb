# frozen_string_literal: true

class Mark < ApplicationRecord
  paginates_per 5

  belongs_to :user

  validates :date, :time, :kind, presence: true

  enum kind: { entrance: 'entrance', exit: 'exit' }
end
