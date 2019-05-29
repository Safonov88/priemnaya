class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.integer :auditorium, null: false
      t.datetime :start_date, null: false

      t.timestamps
    end

    change_table(:streams) do |t|
      t.references :consultation, foreign_key: true, null: false
    end
  end
end
