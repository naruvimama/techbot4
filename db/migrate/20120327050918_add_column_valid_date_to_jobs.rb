class AddColumnValidDateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :valid_date, :date

  end
end
