class AddIdexToSbtInvoices < ActiveRecord::Migration
  def change

    add_index :sbt_invoices, :sbt_customer_id
    add_index :sbt_invoices, :sbt_waybill_id
    change_column :sbt_invoices, :paid, default: false
  end
end
