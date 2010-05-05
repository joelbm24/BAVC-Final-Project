class Review < ActiveRecord::Base
	validates_presence_of :title, :author, :rating
	
	belongs_to :location

	delegate :name, :to => :location, :allow_nil => true, :prefix => true
	delegate :address, :to => :location, :allow_nil => true, :prefix => true
	
	accepts_nested_attributes_for :location, :allow_destroy => true
end
