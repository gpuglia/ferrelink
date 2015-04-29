class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :code, uniqueness: true
end
