class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :user_name
      t.integer :hike_id

      t.timestamps
    end
  end
end
