json.extract! listing, :id, :title, :description, :price, :brand_id, :style_id, :size_id, :state_id, :postcode_id, :user_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
