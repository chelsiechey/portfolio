class AddEndDateToEducation < ActiveRecord::Migration[6.0]
  def change
    add_column :educations, :end_date, :date
  end
end
