class CreateSbtOrderItems < ActiveRecord::Migration
  def change
    create_table :sbt_order_items do |t|
      t.integer       :sbt_order_id
      t.integer       :sbt_product_id
      t.decimal(10.3) :amount

      t.timestamps null: false
    end
  end
end
