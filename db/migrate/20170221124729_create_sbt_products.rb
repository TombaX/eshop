class CreateSbtProducts < ActiveRecord::Migration
  def change
    create_table :sbt_products do |t|
      t.string          :article
      t.string          :name
      t.decimal         :price, precision: 10, scale: 2
      t.integer         :sbt_unit_id
      t.integer         :tax_rate


      t.timestamps null: false
    end
    change_column :sbt_products, :tax_rate, :integer, :default => 0.0
  end
end
