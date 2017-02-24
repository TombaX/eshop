class CreateSbtWaybillItems < ActiveRecord::Migration
  def change
    create_table :sbt_waybill_items do |t|
      t.integer          :num_line
      t.integer          :sbt_waybill_id
      t.decimal    :amount, precision: 10, scale: 3
      t.decimal    :amount_order, precision: 10, scale: 3
      t.decimal    :amount_delta, precision: 10, scale: 3
      t.integer          :sbt_product_id
      t.decimal    :price, precision: 10, scale: 2
      t.decimal    :tax_rate, precision: 10, scale: 2
      t.decimal    :total_sum, precision: 10, scale: 2
      t.decimal    :total_tax_sum, precision: 10, scale: 2
      t.decimal    :grandtotal_sum, precision: 10, scale: 2
      

      t.timestamps null: false
    end
  end
end
