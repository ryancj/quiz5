class BidsController < ApplicationController
  def create
    bid_params = params.require(:bid).permit(:price)
    @auction = Auction.find params[:auction_id]
    @bid = Bid.new bid_params
    @bid.auction = @auction
    if @bid.save
      redirect_to @auction
    else
      render '/auctions/show'
    end
  end

  def destroy
    @auction = Auction.find params[:auction_id]
    @bid = Bid.find params[:id]
    @bid.destroy
    redirect_to @auction
  end
end
