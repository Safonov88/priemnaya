class CreateEntrants < ActiveRecord::Migration[5.2]
  def change
    create_table :entrants do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :patronymic
      t.string :passport, null: false
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
