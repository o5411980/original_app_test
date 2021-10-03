class AddPathToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :path, :string
  end
end
