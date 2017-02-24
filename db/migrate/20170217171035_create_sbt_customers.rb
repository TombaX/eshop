class CreateSbtCustomers < ActiveRecord::Migration
  def change
    create_table :sbt_customers do |t|
      t.string :name
      t.string :address_register
      t.string :address_destiny
      t.string :agreement


      t.timestamps null: false
    end
  end
end
