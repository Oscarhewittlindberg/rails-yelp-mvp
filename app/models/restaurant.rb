class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  # validates :phone_number, format: { with: /\d{2}-\d{2}-\d{2}-\d{2}}
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
