# frozen_string_literal: true

class MarksController < ApplicationController
  def index
    @marks = current_user.marks.order(id: :asc)
  end

  def new
    time_current = Time.zone.now
    @mark = current_user.marks.new(date: time_current.to_date, time: time_current, kind: kind)
  end

  def create
    @mark = current_user.marks.new(mark_params)

    if @mark.save
      redirect_to marks_path, notice: 'Mark successfully created.'
    else
      render :new
    end
  end

  private

  def kind
    last_mark = current_user.marks.where(date: Time.zone.now.to_date).last
    return :entrance if last_mark.blank?

    last_mark.entrance? ? :exit : :entrance
  end

  def mark_params
    params.require(:mark).permit(:date, :time, :kind)
  end
end
