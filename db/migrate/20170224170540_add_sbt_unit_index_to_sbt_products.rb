class AddSbtUnitIndexToSbtProducts < ActiveRecord::Migration
  def change
    add_index :sbt_products, :sbt_unit_id

  end
end
