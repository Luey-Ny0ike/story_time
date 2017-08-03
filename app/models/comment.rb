class Comment < ActiveRecord::Base
  validates :comment, presence: true, length: { minimum: 5, maximum: 15 }
end
