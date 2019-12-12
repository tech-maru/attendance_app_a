class RemovedepartmentFromUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :basic_work_time, :datetime
    add_column :users, :basic_actual_time, :datetime
    remove_column :users, :department, :string
    remove_column :users, :basic_time, :datetime
    remove_column :users, :work_time, :datetime
  end
end
