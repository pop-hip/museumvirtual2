class Emotion < ApplicationRecord
	has_many :art_types

	def to_s
		titre
	end
end
