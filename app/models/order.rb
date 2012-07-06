class Order < ActiveRecord::Base
  attr_accessible :order_date, :order_name, :user_id
  belongs_to :user
  validates :user_id,  :presence =>true
end
