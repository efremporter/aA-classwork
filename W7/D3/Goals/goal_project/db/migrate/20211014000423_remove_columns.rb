class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
  remove_column :users, :username 
  remove_column :users, :session_token

  add_column :users, :username, :string
  add_index :users, :username
  
  add_column :users, :session_token, :string
  add_index :users, :session_token
  end
end
