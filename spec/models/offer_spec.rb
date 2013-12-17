require 'spec_helper'

describe Offer do
  it { should belong_to :business }

  let(:offer) { FactoryGirl.create(:with_dashboard_stats) }
  
  context 'impressions, clicks and conversions stats' do

    context 'counting impressions' do

      it 'can show how many impressions it has' do
        expect(offer.num_of_impressions).to eq 2
      end

      it 'can show how many unique impressions it has' do
        expect(offer.unique_impressions).to eq 1
      end

    end

    context 'counting clicks' do

      it 'can count how many clicks it has' do
        expect(offer.num_of_clicks).to eq 2
      end

    end

    context 'counting conversions' do

      it 'can count how many conversions it has' do
        expect(offer.num_of_conversions).to eq 1
      end

    end

  end

  context 'eligible for a user' do

    let(:customer) { FactoryGirl.create(:customer) }

    it 'can tell if it is active or not' do
      expect(offer.active?).to be_false
    end

    it 'can tell if it is not eligible for a user based on date' do
      expect(offer.eligible_for?(customer)).to be_false
    end

    it 'can tell if it is eligible for a user based on date' do
      offer = FactoryGirl.create(:future_end_time)
      expect(offer.eligible_for?(customer)).to be_true
    end

  end

end
