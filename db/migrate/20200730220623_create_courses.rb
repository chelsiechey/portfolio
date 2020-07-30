class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.boolean :complete
      t.text :description
      t.string :image
      t.belongs_to :education, null: false, foreign_key: true

      t.timestamps
    end
  end
end
