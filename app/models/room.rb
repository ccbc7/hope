class Room < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  has_many :reservations

  mount_uploader :avatar, AvatarUploader
end
