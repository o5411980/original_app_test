class Departments < ActiveRecord::Migration[5.2]
  def change
    drop_table :departments
  end
end
