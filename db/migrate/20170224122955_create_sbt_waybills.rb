class CreateSbtWaybills < ActiveRecord::Migration
  def change
    create_table :sbt_waybills do |t|
      t.string          :num_ttn
      t.integer         :sbt_customer_id
      t.integer         :sbt_order_id
      t.datetime        :date_issue
      t.integer         :sbt_waybill_items_count
      t.decimal   :total_sum, precision: 10, scale: 2
      t.decimal   :total_tax10_sum, precision: 10, scale: 2
      t.decimal   :total_tax20_sum, precision: 10, scale: 2
      t.string          :auto_num

      t.timestamps null: false
    end
  end
end
