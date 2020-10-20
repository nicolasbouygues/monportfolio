class AddHomepageToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :homepage, :string
  end
end
