class AddCategoryIdToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :id_categry, :integer
  end
end
