class RenameEndToEndDateInTasks < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :end, :end_date
    rename_column :tasks, :start, :start_date
  end
end
