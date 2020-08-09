class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.date :completion_date
      t.string :photo
      t.string :link
      t.string :caption

      t.timestamps
    end
  end
end
