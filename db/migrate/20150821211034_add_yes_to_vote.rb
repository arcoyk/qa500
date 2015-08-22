class AddYesToVote < ActiveRecord::Migration
  def change
    add_column :votes, :yes, :integer
  end
end
