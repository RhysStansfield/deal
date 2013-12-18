require 'spec_helper'

describe Business do

  let(:business) { FactoryGirl.create(:with_stats) }

  it { should have_and_belong_to_many(:customers) }

  it { should have_many :offers }

  it { should belong_to :category }

  it 'should have a category when created' do
    expect(business.category.name).to eq 'Sports & Outdoors'
  end

  context 'dashboard stats' do

    let(:offer) { FactoryGirl.create(:with_dashboard_stats) }

    context 'impressions' do

      it 'can tell how many impressions all of its offers have' do
        expect(business.total_impressions).to eq 4
      end

      it 'can tell how many impressions an offer has' do
        expect(business.impressions_for(offer)).to eq 2
      end

      it 'can tell how many unique impressions an offer has' do
        expect(business.unique_impressions_for(offer)).to eq 1
      end

    end

    context 'clicks' do

      it 'can tell how many clicks it has had in total' do
        expect(business.total_clicks).to eq 4
      end

      it 'can tell how many clicks an offer has had' do
        expect(business.clicks_for(offer)).to eq 2
      end

    end

    context 'conversions' do

      it 'can tell how many conversions it has had in total' do
        expect(business.total_conversions).to eq 2
      end

      it 'can tell how many conversions an offer has had' do
        expect(business.conversions_for(offer)).to eq 1
      end

      context 'conversions maths' do

        it 'can calculate the total conversions per click' do
          expect(business.total_conversions_per_click).to eq 0.5
        end

        it 'can calculate the conversions per click for an offer' do
          expect(business.conversions_per_click_for(offer)).to eq 0.5
        end

      end

    end

    context 'click thrus maths' do

      it 'can work out the average click thru rate a business has' do
        expect(business.total_click_thrus).to eq 1.0
      end

      it 'can work out the click thru rate for an offer' do
        expect(business.click_thrus_for(offer)).to eq 1.0
      end

    end

    context 'revenue maths' do

      it 'can work out the total revenue a business has generated' do
        expect(business.total_revenue).to eq 180
      end

      it 'can work out the revenue an offer has generated' do
        expect(business.total_revenue_for(offer)).to eq 90
      end

      it 'can work out the average revenue per offer' do
        expect(business.average_revenue_per_deal).to eq 90.0
      end

    end

    context 'misc. stats' do

      it 'can work out how many followers a business how' do
        expect(business.total_followers).to eq 1
      end

      it 'can work out how many offers a business has' do
        expect(business.total_offers).to eq 2
      end

    end

  end

end
