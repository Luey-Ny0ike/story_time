class Story < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true
  validates :image, presence: true
  validates :intro, presence: true, length: { minimum: 5, maximum: 15}
end
