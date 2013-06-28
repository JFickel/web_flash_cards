class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :guesses
      t.belongs_to :deck
      t.belongs_to :user
    end
  end
end
