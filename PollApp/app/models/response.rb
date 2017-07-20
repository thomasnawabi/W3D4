# == Schema Information
#
# Table name: responses
#
#  id           :integer          not null, primary key
#  responder_id :integer
#  answers_id   :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Response < ActiveRecord::Base
  validates :responder_id, presence: true, uniqueness: true

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answers_id

  belongs_to :responder,
    class_name: :User,
    primary_key: :id,
    foreign_key: :responder_id

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    self.question.responses
    .where.not(id: self.id)
  end
  #anybody who is not self that responded to the
  #question

  def responder_already_answered?
    self.sibling_responses.where(responder_id: self.responder_id).count > 0
  end
#true if responder answered question

end
