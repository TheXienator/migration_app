class RemoveEmailFromPeople < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :email, :string
  end
end
