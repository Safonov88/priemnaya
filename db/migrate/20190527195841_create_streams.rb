class CreateStreams < ActiveRecord::Migration[5.2]
  def change
    create_table :streams do |t|
      t.integer :number, null: false

      t.timestamps
    end

    change_table :groups do |t|
      t.column :stream_id, :bigint, null: false
    end
  end
end
