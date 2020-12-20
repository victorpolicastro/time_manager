# frozen_string_literal: true

class MarksController < ApplicationController
  before_action :set_mark, only: %i[show edit update destroy]

  def index
    @marks = current_user.marks
  end

  def show; end

  def new
    @mark = current_user.marks.new
  end

  def edit; end

  def create
    MarkCreatorService.new(current_user, Time.current).call
    redirect_to marks_url, notice: 'Mark successfully created.'
  end

  def update; end

  def destroy; end

  private

  def set_mark
    @mark = current_user.marks.find(params[:id])
  end

  def mark_params
    params.require(:mark).permit(:marked_at)
  end
end
