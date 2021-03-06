class CreateSbtInvoices < ActiveRecord::Migration
  def change
    create_table :sbt_invoices do |t|
      t.string            :invoice_number
      t.integer           :sbt_customer_id
      t.datetime          :date_issue
      t.integer           :sbt_waybill_id
      t.decimal           :total_sum, precision: 10, scale: 2
      t.decimal           :total_tax10_sum, precision: 10, scale: 2
      t.decimal           :total_tax20_sum, precision: 10, scale: 2
      t.datetime          :due_date
      t.boolean           :paid

      t.timestamps null: false
    end
  end
end
