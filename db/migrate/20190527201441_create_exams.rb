class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.datetime :start_date, null: false
      t.references :subject, foreign_key: true, null: false
      t.references :stream, foreign_key: true, null: false

      t.timestamps
    end
  end
end
