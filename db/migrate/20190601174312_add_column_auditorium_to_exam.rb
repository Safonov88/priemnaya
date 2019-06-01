class AddColumnAuditoriumToExam < ActiveRecord::Migration[5.2]
  def change
    add_column :exams, :auditorium, :integer
  end
end
