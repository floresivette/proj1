class AddDefaultstoPokemon < ActiveRecord::Migration
  def up
  change_column :pokemons, :level, :integer, default: 1
  change_column :pokemons, :health, :integer, default: 100
end

def down
   change_column :pokemons, :level, :integer, default: nil
   change_column :pokemons, :health, :integer, default: nil
end
end
