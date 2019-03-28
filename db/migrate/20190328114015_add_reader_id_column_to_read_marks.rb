class AddReaderIdColumnToReadMarks < ActiveRecord::Migration
  def change
    add_column :read_marks, :reader_id, :integer
    add_column :read_marks, :reader_type, :string
    change_column :read_marks, :member_id, :integer, default: 1
  end
end
