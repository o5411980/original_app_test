class RenamePathColumnToDocuments < ActiveRecord::Migration[5.2]
  def change
    rename_column :documents, :path, :filepath
  end
end
