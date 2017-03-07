class CreateSbtOrders < ActiveRecord::Migration
  def change
    create_table :sbt_orders do |t|
      t.integer       :number
      t.datetime      :date_order
      t.integer       :sbt_order_items_count
      t.integer       :sbt_customer_id
      t.string        :tel_contact
      t.datetime      :date_due
      t.integer       :status

      t.timestamps null: false
    end
  end
end
