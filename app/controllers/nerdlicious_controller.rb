class NerdliciousController < ApplicationController
  respond_to :html

  def show
    @question = Question.where(index: 1).first()
  end
end