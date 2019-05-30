class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.integer :auditorium, null: false
      t.datetime :start_date, null: false
      t.references :stream, foreign_key: true, null: false

      t.timestamps
    end
  end
end
