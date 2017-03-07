class SbtWaybillItem < ActiveRecord::Base
  validates :num_line,:amount,:amount_order,:amount_delta,:price,:tax_rate,
            :total_sum,:total_tax_sum,:grandtotal_sum, presence: true
  validates :num_line,uniqueness: {scope: :sbt_waybills_id}
  validates :tax_rate,tax: true

end
