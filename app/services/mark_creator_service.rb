# frozen_string_literal: true

class MarkCreatorService
  def initialize(user, time)
    @user = user
    @time = time
  end

  def call
    user.marks.create!(marked_at: time)
  rescue StandardError => e
    Rails.logger.error(e.full_messages)
    OpenStruct.new(success?: false, messages: e.full_messages)
  end

  private

  attr_reader :user, :time
end
