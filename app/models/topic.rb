class Topic < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :posts

  validates :title, presence: true
  validates :description, presence: true
end
