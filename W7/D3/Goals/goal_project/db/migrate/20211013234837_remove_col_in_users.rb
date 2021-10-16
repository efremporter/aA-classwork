class RemoveColInUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :username, :session_token
  end
end
