class AddLikeToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :like, :integer, default: 0
  end
end
