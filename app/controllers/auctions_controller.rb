class AuctionsController < ApplicationController

  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new auction_params
    if @auction.save
      redirect_to auction_path(@auction), notice: 'Auction Created'
    else
      render :new
    end
  end

  def show
    @auction = Auction.find params[:id]
    @bid = Bid.new
    @current_price = Bid.maximum('price')
  end

  def index
    @auctions = Auction.all
  end

  def destroy
    @auction = Auction.find params[:id]
    @auction.destroy
    redirect_to root_path
  end

  private
    def auction_params
      params.require(:auction).permit(:title, :details, :ends_on, :reserve_price)
    end
end
