class CreateBatters < ActiveRecord::Migration
  def change
    create_table :batters do |t|
      t.string :name
      t.string :team
      t.string :position
      t.float :avg
      t.float :hr
      t.float :total_point

      t.timestamps
    end
  end
end
