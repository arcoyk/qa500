class Question < ActiveRecord::Base
	after_initialize :set_default_value
	has_many :answers
	has_one :vote
	def set_default_value
		self.vote ||= Vote.create
	end
end
