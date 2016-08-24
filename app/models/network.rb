class Network < ApplicationRecord
	validates_presence_of :url, :name, :slug
	validates_uniqueness_of :url
end
