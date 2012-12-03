class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :number
      t.string :type
      t.integer :stage
      t.references :dex
      t.boolean :captured
      t.string :owner

      t.timestamps
    end
    add_index :pokemons, :dex_id
  end
end
