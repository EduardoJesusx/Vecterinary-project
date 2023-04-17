class AddStatusExam < ActiveRecord::Migration[7.0]
  def change
    add_column :exams, :status, :integer
  end
end
