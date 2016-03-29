class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :auctions, :reserve_price
  end
end
