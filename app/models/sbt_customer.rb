class SbtCustomer < ActiveRecord::Base
  validates :name, :address_register, :address_destiny, :agreement, presence: true
end
