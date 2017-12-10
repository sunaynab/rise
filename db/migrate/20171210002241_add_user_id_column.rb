class AddUserIdColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :incidents, :user_id, :integer 
  end
end
