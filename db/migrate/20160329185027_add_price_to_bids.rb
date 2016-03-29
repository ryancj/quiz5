class AddPriceToBids < ActiveRecord::Migration
  def change
    add_column :bids, :price, :decimal, :precision => 8, :scale => 2
  end
end
