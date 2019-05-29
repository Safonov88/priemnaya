class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name, null: false

      t.timestamps
    end

    change_table(:consultations) do |t|
      t.references :subject, foreign_key: true, null: false
    end
  end
end
