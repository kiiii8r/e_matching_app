class Profile < ApplicationRecord  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :language1
  belongs_to_active_hash :language2
  belongs_to_active_hash :language3
  belongs_to_active_hash :role

  has_one :user

  validates :user_id, presence: true, uniqueness: true
end
