25.times do |i|
	Project.create name: "Project #{i}", description: "This is the #{i} description"
	Project.entries.create(hours: 1, minutes: 30)
end

project = Project.last
project.entries.create(hours: 1)
