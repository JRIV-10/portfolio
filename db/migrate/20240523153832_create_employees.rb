class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.text :about_me
      t.text :resume

      t.timestamps
    end
  end
end
