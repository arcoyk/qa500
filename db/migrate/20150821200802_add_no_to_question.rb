class AddNoToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :no_option, :string
  end
end
