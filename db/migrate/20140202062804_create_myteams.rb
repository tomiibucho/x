class CreateMyteams < ActiveRecord::Migration
  def change
    create_table :myteams do |t|
      t.string :name
      t.string :formation
      t.string :myplayer

      t.timestamps
    end
  end
end
