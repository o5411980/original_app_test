class RenameTypeColumnToDocuments < ActiveRecord::Migration[5.2]
  def change
    rename_column :documents, :type, :category
  end
end
