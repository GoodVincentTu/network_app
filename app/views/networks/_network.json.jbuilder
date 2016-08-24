json.extract! network, :id, :name, :image, :contact_info, :slug, :url, :created_at, :updated_at
json.url network_url(network, format: :json)