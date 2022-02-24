class CreateHikes < ActiveRecord::Migration[6.1]
  def change
    create_table :hikes do |t|
      t.string :difficulty
      t.string :best_season
      t.string :distance
      t.text :notes
      t.string :trail_use

      t.timestamps
    end
  end
end
