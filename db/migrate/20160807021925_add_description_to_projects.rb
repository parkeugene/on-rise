class AddDescriptionToProjects < ActiveRecord::Migration[5.0]
  def change
  	add_column :projects, :description, :text
  	add_column :projects, :subtitle, :string
  	add_column :projects, :contributor, :string
  	add_column :projects, :contributor_url, :string
  end
end
