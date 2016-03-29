require 'rails_helper'

RSpec.describe AuctionsController, type: :controller do
  let(:auction) { FactoryGirl.create(:auction) }

  describe '#new' do
    it 'renders the new template' do
      get :new
      expect(response).to render_template(:new)
    end
    it 'instantiates an auction object to @auction' do
      get :new
      expect(assigns(:auction)).to be_a_new(Auction)
    end
  end

  describe '#create' do
    context 'successful create' do
      def valid_request
        @auction = FactoryGirl.create(:auction)
        post :create
      end

      it 'redirects to the created auction' do
        valid_request
        expect(response).to redirect_to(auction_path(@auction))
      end

    end
  end
end
