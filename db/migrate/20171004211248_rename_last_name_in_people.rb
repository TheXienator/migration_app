class RenameLastNameInPeople < ActiveRecord::Migration[5.1]
  def change
  	rename_column :people, :lastName, :last_name
  end
end
