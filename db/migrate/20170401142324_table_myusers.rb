class TableMyusers < ActiveRecord::Migration[5.0]
  def change
    #create_table :myusers
    add_column :myusers, :name, :string
  end
end
