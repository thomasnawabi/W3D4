# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  author_id  :integer
#  title      :string
#  created_at :datetime
#  updated_at :datetime
#

class Poll < ActiveRecord::Base
  validates :author_id, presence: true, uniqueness: true

  belongs_to :author,
    class_name: :User,
    primary_key: :id,
    foreign_key: :author_id

  has_many :questions,
    class_name: :Question,
    primary_key: :id,
    foreign_key: :poll_id
end
