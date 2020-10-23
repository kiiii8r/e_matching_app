class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :like, optional: true
  belongs_to :message, optional: true
end
