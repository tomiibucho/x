class CreatePitchers < ActiveRecord::Migration
  def change
    create_table :pitchers do |t|
      t.string :name
      t.string :team
      t.string :position
      t.float :era
      t.float :so
      t.float :total_point

      t.timestamps
    end
  end
end
