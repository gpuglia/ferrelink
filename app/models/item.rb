class Item < ActiveRecord::Base
  validates :code, uniqueness: true
end
