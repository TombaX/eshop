class SbtWaybill < ActiveRecord::Base
  validates :num_ttn,:date_issue,:sbt_waybill_items_count,:total_sum,:total_tax10_sum,
            :total_tax20_sum,:auto_num,presence: true
  validates :num_ttn,uniqueness: true
end
