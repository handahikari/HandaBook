class RenameNameColumnToComments < ActiveRecord::Migration[5.0]
  def up
  	rename_column :comments, :from, :string, nil: false, default: 0
  end
  def down
  	rename_column :comments, :name, :string, nil: true, default: 0
end
