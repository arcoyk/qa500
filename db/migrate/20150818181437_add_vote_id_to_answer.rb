class AddVoteIdToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :vote_id, :string
  end
end
