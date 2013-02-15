require_relative '../../db/config'
require 'date'

class CongressMember < ActiveRecord::Base
	# belongs_to :state
	# belongs_to :party


	def in_office?
		return true if self.in_office == 1
	end
end