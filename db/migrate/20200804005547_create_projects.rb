class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :date_completed
      t.string :link
      t.text :description
      t.string :language
      t.text :image

      t.timestamps
    end
  end
end
