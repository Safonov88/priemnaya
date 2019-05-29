class CreateExamLists < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_lists do |t|
      t.integer :assessment, null: false, default: 0
      t.references :entrant, foreign_key: true, null: false
      t.references :exam, foreign_key: true, null: false

      t.timestamps
    end
  end
end
