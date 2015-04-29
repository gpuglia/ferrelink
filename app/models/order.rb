class Order < ActiveRecord::Base
  belongs_to :salesman
  has_many :items, dependent: :destroy

  accepts_nested_attributes_for :items
end
