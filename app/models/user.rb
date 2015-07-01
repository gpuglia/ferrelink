class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum type: [:admin, :salesman]

  has_many :orders, foreign_key: 'salesman_id'
end
