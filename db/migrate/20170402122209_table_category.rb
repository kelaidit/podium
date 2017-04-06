class TableCategory < ActiveRecord::Migration[5.0]
  def change
    create_table :categorys
    add_column :categorys, :title, :string
  end
end
