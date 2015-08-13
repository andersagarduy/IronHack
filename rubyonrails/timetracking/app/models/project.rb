class Project < ActiveRecord::Base
has_many :entries
validates :name, presence: true
validates :name, uniqueness: true
validates :name, length: {maximum: 30}
validates :name, format: {with: /\w\s/} 

	def self.iron_find(id)
		where(id: id).first
	end

	def self.clean_old
		# projects = where('created_at < ?' Date.current - 1.week)
		# projects.destroy_all
	end

	def self.last_created_projects(number)
		order(created_at: :desc).limit(number)
	end
end

