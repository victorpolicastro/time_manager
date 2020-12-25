# frozen_string_literal: true

class MarksPresenter
  def initialize(marks)
    @marks = marks
  end

  def attributes
    marks.each do |mark|
      {
      }
    end
  end

  private

  attr_reader :marks
end
