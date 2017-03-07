class SbtOrderItem < ActiveRecord::Base
  validates :amount,presence: true
end
