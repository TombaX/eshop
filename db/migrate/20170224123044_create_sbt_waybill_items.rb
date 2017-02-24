class CreateSbtWaybillItems < ActiveRecord::Migration
  def change
    create_table :sbt_waybill_items do |t|
      t.integer          :num_line
      t.integer          :sbt_waybill_id
      t.decimal(10.3)    :amount
      t.decimal(10.3)    :amount_order
      t.decimal(10.3)    :amount_delta
      t.integer          :sbt_product_id
      t.decimal(10.2)    :price
      t.decimal(10.2)    :tax_rate
      t.decimal(10.2)    :total_sum
      t.decimal(10.2)    :total_tax_sum
      t.decimal(10.2)    :grandtotal_sum
      

      t.timestamps null: false
    end
  end
end
