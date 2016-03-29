class AddColumn < ActiveRecord::Migration
  def change
    add_column :auctions, :reserve_price, :decimal, :precision => 8, :scale => 2
  end
end
