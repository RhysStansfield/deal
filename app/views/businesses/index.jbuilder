json.array! @businesses do |business|
  json.new_follow_count business.customers.size

  if business.customers.include?(current_user)
    json.(business, :id, :company_name)
    json.follow_button_text 'Unfollow'
    json.offers @offers do |offer|
      json.(offer, :id)
      json.created_at time_ago_in_words(offer.created_at) + ' ago'
      json.company_name business.company_name
      json.start_at offer.available_from
      json.end_at offer.available_to
      json.offer_path offer_time_windows_path(offer)
      json.teaser offer.teaser.url(:large)
      json.logo business.avatar.url(:thumb)
    end
  else
    json.follow_button_text 'Follow'
  end
end

# json.array! @offers do |offer|
#   json.new_follow_count offer.business.customers.size

#   json.(business, :id, :company_name)
#   json.(offer, :id)
#   json.created_at time_ago_in_words(offer.created_at) + ' ago'
#   json.company_name business.company_name
#   json.start_at offer.available_from
#   json.end_at offer.available_to
#   json.offer_path offer_time_windows_path(offer)
#   json.teaser offer.teaser.url(:large)
#   json.logo business.avatar.url(:thumb)
# end