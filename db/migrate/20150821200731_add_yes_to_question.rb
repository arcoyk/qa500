class AddYesToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :yes_option, :string
  end
end
