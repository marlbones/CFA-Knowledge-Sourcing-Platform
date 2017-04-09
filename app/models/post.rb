class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  belongs_to :topic

  validates :title, presence: true
  validates :important, presence: true
  validates :use, presence: true
  validates :content, presence: true

end
