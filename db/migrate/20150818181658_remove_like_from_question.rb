class RemoveLikeFromQuestion < ActiveRecord::Migration
  def change
  	remove_column :questions, :like, :string
  end
end
