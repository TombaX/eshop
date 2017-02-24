class CreateSbtProducts < ActiveRecord::Migration
  def change
    create_table :sbt_products do |t|
      t.string          :article
      t.string          :name
      t.decimal(10.2)   :price
      t.integer         :sbt_unit_id
      t.integer         :tax_rate

      t.timestamps null: false
    end
  end
end
