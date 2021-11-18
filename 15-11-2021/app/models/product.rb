class Product < ApplicationRecord
  validates :sku, :title, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :quantity, numericality: { only_integer: true, greater_than: 0}
  validates :image, format: { with: /(https?:\/\/.*\.(?:jpg|jpeg|png))/i, message: "only allows image link including https (jpg,jpeg,png)" }
end
