# frozen_string_literal: true

class MarksController < ApplicationController
  before_action :set_mark, only: %i[]

  def index
    @marks = current_user.marks.order(id: :desc)
  end

  def new
    time_current = Time.zone.now
    @mark = current_user.marks.new(date: time_current.to_date, datetime: time_current, kind: kind )
  end

  def create
    @
  end

  def mark_time
    @mark = build_mark

    if @mark.save
      redirect_to marks_path, notice: 'Mark was successfully created.'
    else
      render :new
    end
  end

  private

  def build_mark
    datetime = Time.zone.now
    current_user.marks.new(date: datetime, datetime: datetime, kind: kind)
  end

  def kind
    last_mark = current_user.marks.last
    return :entrance if last_mark.blank?
    last_mark.entrance? ? :exit : :entrance
  end
end
