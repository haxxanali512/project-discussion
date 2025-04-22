class AddStartDateToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :start_date, :datetime
  end
end
