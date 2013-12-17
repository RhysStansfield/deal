json.array! @businesses do |business|
  json.new_follow_count business.customers.size

  if business.customers.include?(current_user)
    json.(business, :id, :company_name)
    json.follow_button_text 'Unfollow'
    json.offers business.offers do |offer|
      json.created_at time_ago_in_words(offer.created_at) + ' ago'
      json.company_name business.company_name
      json.offer_path offer_time_windows_path(offer)
    end
  else
    json.follow_button_text 'Follow'
  end
end