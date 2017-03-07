class CreateSbtUnits < ActiveRecord::Migration
  def change
    create_table :sbt_units do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
