class NerdliciousController < ApplicationController
  respond_to :html

  def show
    @question = Question.where(index: (Time.now - 3.hours).day).first()

    unless @question
      @question = Question.new(index: -1, question: 'Whoops, questions went dark', answer: 'Missing In Action')
    end
  end
end