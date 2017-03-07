class SbtInvoice < ActiveRecord::Base
  validates :invoice_number,:date_issue,:total_sum,:total_tax10_sum,:total_tax20_sum,
      :due_date,:paid, presence: true
  validates :invoice_number,uniqueness: true

end
