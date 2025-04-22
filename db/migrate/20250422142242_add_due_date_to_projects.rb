class AddDueDateToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :due_date, :datetime
  end
end
