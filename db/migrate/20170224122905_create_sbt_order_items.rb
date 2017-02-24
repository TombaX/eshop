class CreateSbtOrderItems < ActiveRecord::Migration
  def change
    create_table :sbt_order_items do |t|
      t.integer       :sbt_order_id
      t.integer       :sbt_product_id
      t.decimal       :amount, precision: 10, scale: 3

      t.timestamps null: false
    end
  end
end
