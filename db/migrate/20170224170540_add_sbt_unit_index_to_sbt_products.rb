class AddSbtUnitIndexToSbtProducts < ActiveRecord::Migration
  def change
    add_index :sbt_products, :sbt_unit_id
    change_column :sbt_products, :tax_rate, default: 0
  end
end
