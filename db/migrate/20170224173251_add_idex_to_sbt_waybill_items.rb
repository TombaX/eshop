class AddIdexToSbtWaybillItems < ActiveRecord::Migration
  def change
    add_index :sbt_waybill_items, :sbt_waybill_id
    add_index :sbt_waybill_items, :sbt_product_id
    change_column :sbt_waybill_items, :tax_rate, default: 0
  end
end
