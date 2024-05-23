class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :link
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
