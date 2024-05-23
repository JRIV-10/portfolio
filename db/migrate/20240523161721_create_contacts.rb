class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :linkedin
      t.string :github
      t.string :email
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
