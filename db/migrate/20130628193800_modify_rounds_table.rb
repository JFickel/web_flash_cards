class ModifyRoundsTable < ActiveRecord::Migration
  def up
    remove_column :rounds, :correct_guesses
    remove_column :rounds, :incorrect_guesses
  end
  
  def down
    add_column :rounds, :correct_guesses, :integer, default: 0
    add_column :rounds, :incorrect_guesses, :integer, default: 0
  end
end
