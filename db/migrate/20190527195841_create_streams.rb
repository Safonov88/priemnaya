class CreateStreams < ActiveRecord::Migration[5.2]
  def change
    create_table :streams do |t|
      t.integer :Number, null: false
      t.references :group, foreign_key: true, null: false

      t.timestamps
    end
  end
end
