class Project < ActiveRecord::Base
	attr_accessible :date, :description, :name, :tag_id, :title, :tags_attributes

	validates :name, :presence => true
	validates :title, :presence => true, :length => { :minimum => 5 }
	
	has_many :comments, :dependent => :destroy
	has_many :tags
 
	accepts_nested_attributes_for :tags, :allow_destroy => :true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end