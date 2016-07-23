class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :img
      t.string :title
      t.text :description
      t.string :original_link
      t.string :trans_link
      t.string :translators
      t.string :goal
      t.string :area
      t.string :participation_way
      t.integer :likes_number
      t.string :start_date
      t.string :end_date
      t.string :status
      t.integer :read_count
      t.string :contact

      t.timestamps
    end
  end
end
