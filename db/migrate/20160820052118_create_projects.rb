class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.string :original_url
      t.string :translation_url
      t.text :description
      t.string :contributor
      t.string :contributor_url

      t.timestamps
    end
  end
end
