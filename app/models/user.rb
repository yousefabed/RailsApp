class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone_number
  validates :email,  :presence =>true
  validates :phone_number,  :presence =>true
HUMANIZED_ATTRIBUTES = {
    :email => "E-mail address"
  }

  def self.human_attribute_name(attr, options={})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
