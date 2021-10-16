class FixGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :user_id, :integer 
  end
end
