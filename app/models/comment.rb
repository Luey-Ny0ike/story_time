class Comment < ActiveRecord::Base
  belongs_to :story
  validates :comment, presence: true, length: { minimum: 5, maximum: 15 }
end
