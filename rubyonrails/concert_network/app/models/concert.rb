class Concert < ActiveRecord::Base
	validates :band, presence: {message: "There should be a band, tuercebotas!"}
	validates :city, :date, :price, :description, presence: true
	validates :band, length: {maximum: 30}
	validates :city, length: {maximum: 10}
end