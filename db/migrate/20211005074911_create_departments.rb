class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.integer :location
      t.text :description

      t.timestamps
    end
  end
end
