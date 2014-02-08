class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :starter1
      t.string :starter2
      t.string :reliever1
      t.string :reliever2
      t.string :catcher
      t.string :first
      t.string :second
      t.string :third
      t.string :short
      t.string :outfielder1
      t.string :outfielder2
      t.string :outfielder3

      t.timestamps
    end
  end
end
