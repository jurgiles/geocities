class Question
  include Mongoid::Document
  field :index, type: Integer
  field :question, type: String
  field :answer, type: String

end