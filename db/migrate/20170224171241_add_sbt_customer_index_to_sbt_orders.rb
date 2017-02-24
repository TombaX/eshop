class AddSbtCustomerIndexToSbtOrders < ActiveRecord::Migration
  def change

    add_index :sbt_orders, :sbt_customer_id
    change_column :sbt_orders, :status, default: 0
  end
end
