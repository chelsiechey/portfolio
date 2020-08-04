class AddStartDateToEducation < ActiveRecord::Migration[6.0]
  def change
    add_column :educations, :start_date, :date
  end
end
