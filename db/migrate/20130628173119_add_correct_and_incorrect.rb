class AddCorrectAndIncorrect < ActiveRecord::Migration
  def up
    remove_column :rounds, :guesses
    add_column :rounds, :correct_guesses, :integer, default: 0
    add_column :rounds, :incorrect_guesses, :integer, default: 0
  end
  def down
    remove_column :rounds, :correct_guesses
    remove_column :rounds, :incorrect_guesses
    add_column :rounds, :guesses, :integer, default: 0
  end
end
