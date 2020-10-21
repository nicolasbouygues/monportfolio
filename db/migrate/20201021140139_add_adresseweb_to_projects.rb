class AddAdressewebToProjects < ActiveRecord::Migration[6.0]
  def change
        add_column :projects, :adresseweb, :string
  end
end
