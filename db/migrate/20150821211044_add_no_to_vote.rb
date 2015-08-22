class AddNoToVote < ActiveRecord::Migration
  def change
    add_column :votes, :no, :integer
  end
end
