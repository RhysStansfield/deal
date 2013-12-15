class Conversion < ActiveRecord::Base

  belongs_to :customer
  belongs_to :offer
  
  def self.conv_per_click conversions, clicks
  	return 0 if conversions == 0 || clicks == 0
  	conversions.to_f / clicks.to_f
  end

  def self.total_conversions business
  	return 0 if business.offers.empty? || Conversion.iterate_offers(business)
  	total_conversions = []
  	business.offers.each do |offer|
  		total_conversions << offer.conversions.size
  	end
  	return total_conversions.inject(:+)
  end

  def self.iterate_offers business
  	business.offers.all? do |offer|
  		offer.conversions.empty?
  	end
  end

  def self.total_revenue conversions, price
    return 0 if conversions == 0 || price == 0
    conversions.to_f * price.to_f
  end



end
