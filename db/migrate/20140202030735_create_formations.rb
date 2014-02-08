class CreateFormations < ActiveRecord::Migration
  def change
    create_table :formations do |t|
      t.string :title

      t.timestamps
    end
  end
end
