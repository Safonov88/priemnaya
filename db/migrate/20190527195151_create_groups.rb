class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.integer :number, null: false
      t.references :department, foreign_key: true, null: false

      t.timestamps
    end
  end
end
