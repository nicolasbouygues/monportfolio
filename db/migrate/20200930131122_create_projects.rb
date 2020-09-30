class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.text :technologies, array: true, default: []

      t.timestamps
    end
  end
end
