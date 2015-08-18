class RemoveLikeFromAnswer < ActiveRecord::Migration
  def change
    remove_column :answers, :like, :string
  end
end
