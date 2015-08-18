class AddVoteIdToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :vote_id, :string
  end
end
