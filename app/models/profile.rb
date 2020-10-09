class Profile < ApplicationRecord  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :language
  belongs_to_active_hash :role

  has_one :user
end
