class Order < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :products, through: :items

  accepts_nested_attributes_for :items, reject_if: ->(attrs) { attrs['quantity'].blank? || attrs['quantity'] == "0"},
    allow_destroy: true

  scope :confirmed, ->{ where(confirmed: true) }

  def confirm
    update(confirmed: true)
  end
end
