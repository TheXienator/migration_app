class RenameNameToFirstNameInPeople < ActiveRecord::Migration[5.1]
  def change
  	rename_column :people, :name, :first_name
    add_column :people, :lastName, :string
  end
end
