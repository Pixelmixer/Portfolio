class Project < ActiveRecord::Base
	attr_accessible :title
	
	has_many :tasks

	# rails
	validates :title, :presence => true
end
