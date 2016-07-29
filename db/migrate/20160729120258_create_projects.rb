class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :title
      t.string :team
      t.string :language
      t.string :link
      t.date :date
      t.string :image
      t.string :progress
      t.boolean :applicant
      t.string :content
      t.string :comment

      t.timestamps
    end
  end
end
