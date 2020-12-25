# frozen_string_literal: true

class MarkCreatorService
  def initialize(user, datetime)
    @user = user
    @datetime = datetime
  end

  def call
    mark = user.marks.create!(date: datetime.to_date, datetime: datetime, kind: kind)
    aaaa
    OpenStruct.new(ok?: true, object: mark)
  rescue StandardError => e
    Rails.logger.error(e)
    Rails.logger.error(e.full_message)

    OpenStruct.new(ok?: false, messages: e)
  end

  private

  attr_reader :user, :datetime

  def kind
    last_mark = user.marks.last
    return :entrance if last_mark.blank?
    last_mark.entrance? ? :exit : :entrance
  end
end
