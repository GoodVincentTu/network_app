json.extract! network, :id, :name, :image, :current_position, :slug, :url, :created_at, :updated_at
json.url network_url(network, format: :json)