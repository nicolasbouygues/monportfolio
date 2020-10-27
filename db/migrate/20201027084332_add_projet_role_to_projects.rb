class AddProjetRoleToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :projet_role, :string
    add_column :projects, :projet_avancees, :string
    add_column :projects, :projet_developpement, :string
  end
end
