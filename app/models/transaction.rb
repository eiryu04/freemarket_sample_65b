class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :user, :product, presence: true
end
