class AddFeaturedToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :featured, :boolean
  end
end
