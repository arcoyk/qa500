class Answer < ActiveRecord::Base
	after_initialize :set_default_value
	belongs_to :question
	has_one :vote

	def set_default_value
		self.vote ||= Vote.create
		self.anstype ||= 'yes'
	end
end
