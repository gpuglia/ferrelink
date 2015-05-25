class Order < ActiveRecord::Base
  belongs_to :salesman
  has_many :items, dependent: :destroy
  has_many :products, through: :items

  accepts_nested_attributes_for :items, reject_if: -> (attrs) { attrs['quantity'].blank? }

  def confirm
    update(confirmed: true)
  end
end
