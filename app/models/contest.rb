class Contest < ApplicationRecord
  validates :fname, presence: true, length: { maximum: 25 }
  validates :lname, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 25 }, format: { with: URI::MailTo::EMAIL_REGEXP },   uniqueness: true
  validates :slogan, presence: true, length: { maximum: 50 }
end
