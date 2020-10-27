class AddProjetRoleToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :projet_role, :string
    add_column :projects, :projet_back, :string
    add_column :projects, :projet_front, :string
    add_column :projects, :projet_debut, :string
  end
end
