class Entry < ActiveRecord::Base
	belongs_to :project
	validates :hours, numericality: {only_integer: true, greater_than: 0}
	validates :minutes, numericality: {only_integer: true, greater_than: 0}
	validates :date, :hours, :minutes presence: true
	validates :project, presence: true

end
