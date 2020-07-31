class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :school
      t.boolean :complete
      t.string :level
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end

