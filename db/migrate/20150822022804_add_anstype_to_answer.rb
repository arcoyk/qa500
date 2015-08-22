class AddAnstypeToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :anstype, :string
  end
end
