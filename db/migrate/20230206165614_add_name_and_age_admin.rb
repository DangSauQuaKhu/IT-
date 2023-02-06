class AddNameAndAgeAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :name, :string
    add_column :admins, :age, :integer
    add_column :admins, :avatar, :string
    add_index :admins, :name, unique: true
  end
end
