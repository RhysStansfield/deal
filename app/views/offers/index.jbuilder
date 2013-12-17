json.offers @customer_offers do |offer|
  json.created_at time_ago_in_words(offer.created_at) + ' ago'
  json.company_name offer.business.company_name
  json.start_at offer.available_from.to_i
  json.end_at offer.available_to.to_i
  json.offer_path offer_time_windows_path(offer)
end