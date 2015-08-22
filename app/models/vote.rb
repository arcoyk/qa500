class Vote < ActiveRecord::Base
	after_initialize :set_default_value
	belongs_to :question
	belongs_to :answer
	private
  	def set_default_value
  		self.like ||= 0
  		self.yes ||= 0
  		self.no ||= 0
  	end
end

