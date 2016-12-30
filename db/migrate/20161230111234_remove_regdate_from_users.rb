class RemoveRegdateFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :regdate, :string
  end
end
