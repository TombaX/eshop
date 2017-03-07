class AddSbtCustomerIndexToSbtOrders < ActiveRecord::Migration
  def change

    add_index :sbt_orders, :sbt_customer_id
    change_column :sbt_orders, :status, :integer, :default=> 0
  end
end
