class Business < User

  has_and_belongs_to_many :customers, -> { uniq }
  
  has_many :offers
  has_many :impressions, through: :offers
  has_many :clicks, through: :offers
  has_many :conversions, through: :offers


  belongs_to :category

  def total_impressions
    offers.inject(0) do |sum, offer|
      sum + offer.num_of_impressions
    end
  end

  def impressions_for offer
    offer.num_of_impressions
  end

  def unique_impressions_for offer
    offer.unique_impressions
  end

  def total_clicks
    offers.inject(0) do |sum, offer|
      sum + offer.num_of_clicks
    end
  end

  def clicks_for offer
    offer.num_of_clicks
  end

  def total_conversions
    offers.inject(0) do |sum, offer|
      sum + offer.num_of_conversions
    end
  end

  def conversions_for offer
    offer.num_of_conversions
  end

  def total_conversions_per_click
    Conversion.conv_per_click(total_conversions, total_clicks).round(2)
  end

  def conversions_per_click_for offer
    Conversion.conv_per_click(conversions_for(offer), clicks_for(offer)).round(2)
  end

  def total_click_thrus
    return "-" if total_clicks == 0 || total_impressions == 0
    (total_clicks.to_f / total_impressions).round(2)
  end

  def click_thrus_for offer
    return 0 if impressions_for(offer) == 0 || clicks_for(offer) == 0
    (clicks_for(offer).to_f / impressions_for(offer)).round(2)
  end

  def total_revenue
    return 0 if offers.size == 0
    offers.inject(0) do |sum, offer|
      sum + (offer.price * offer.num_of_conversions).round(2)
    end
  end

  def total_revenue_for offer
    offer.num_of_conversions * offer.price
  end

  def average_revenue_per_deal
    return 0 if offers.size == 0
    revenue = offers.inject(0) do |sum, offer|
      sum + (offer.price * offer.num_of_conversions).round(2)
    end
    revenue / offers.size
  end

  def average_conversion_time
    return 0 if conversions.empty?
    conversions.average(:time_taken_to_buy)
  end

  def total_followers
    customers.length
  end

  def total_offers
    offers.length
  end

end
