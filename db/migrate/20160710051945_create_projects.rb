class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :original_url
      t.string :translation_url

      t.timestamps
    end
  end
end
