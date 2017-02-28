class AddIdexToOrederProducts < ActiveRecord::Migration
  def change

    add_index :sbt_order_items, :sbt_order_id
    add_index :sbt_order_items, :sbt_product_id
  end
end
