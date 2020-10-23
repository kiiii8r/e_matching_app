class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile
  has_many :room_users
  has_many :messages
  has_many :rooms, through: :room_users
  has_many :notifications

  with_options presence: true do
    validates :nickname
    validates :birth_day
    validates :gender
    validates :age
  end

  validates :password, format: { with: /\A[a-z0-9]+\z/i, message: 'Include both letters and numbers' }, allow_nil: true

  with_options presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'Full-width characters' } do
    validates :first_name
    validates :last_name
  end

  with_options presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: 'Full-width katakana characters' } do
    validates :first_name_kana
    validates :last_name_kana
  end
end
