class AddAnswerIdToVote < ActiveRecord::Migration
  def change
    add_column :votes, :answer_id, :string
  end
end
