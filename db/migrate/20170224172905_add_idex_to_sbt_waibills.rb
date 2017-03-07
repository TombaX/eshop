class AddIdexToSbtWaibills < ActiveRecord::Migration
  def change
    add_index :sbt_waybills, :sbt_customer_id
    add_index :sbt_waybills, :sbt_order_id
  end
end
