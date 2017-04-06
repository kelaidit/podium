class AddIdCategoryToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :id_category, :integer
  end
end
