class AddCreationDateToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :creation_date, :date
  end
end
