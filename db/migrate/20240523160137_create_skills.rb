class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills do |t|
      t.string :primary_lang
      t.string :framework
      t.string :learning
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
