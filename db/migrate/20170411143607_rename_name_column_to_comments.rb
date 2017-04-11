class RenameNameColumnToComments < ActiveRecord::Migration[5.0]
  def change
  	rename_column :comments, :name, :from
  end
end
