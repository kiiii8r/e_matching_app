class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :like
  belongs_to :message
end
