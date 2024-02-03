class AddUserIdToClassrooms < ActiveRecord::Migration[7.1]
  def change
    add_column :classrooms, :user_id, :string
    add_index :classrooms, :user_id 
  end
end
