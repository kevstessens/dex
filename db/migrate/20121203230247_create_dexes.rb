class CreateDexes < ActiveRecord::Migration
  def change
    create_table :dexes do |t|
      t.string :owner
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
