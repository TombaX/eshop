class SbtOrder < ActiveRecord::Base
  validates :number,:date_order, :tel_contact,:date_due,:status, presence: true
  validates :number, uniqueness: true
  validates :status, inclusion: {in:[0,1,2,3],
                   message:"Only 0 ,1,2,3"}
end
