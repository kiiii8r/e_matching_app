class Like < ApplicationRecord
  belongs_to :user
  has_many :notifications

  validates :user_id, presence: true, uniqueness: {scope: :pushed_user_id}
  validates :pushed_user_id, presence: true
end
