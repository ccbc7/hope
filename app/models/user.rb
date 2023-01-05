class User < ApplicationRecord
  has_many :rooms, foreign_key: "user_id"
  has_many :reservations
end
