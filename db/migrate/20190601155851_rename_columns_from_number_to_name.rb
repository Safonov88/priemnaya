class RenameColumnsFromNumberToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :groups, :number, :name
    rename_column :streams, :number, :name
    add_column :entrants, :email, :string
  end
end
