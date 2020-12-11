class Epd < ApplicationRecord
	has_many :epd_indicators
	accepts_nested_attributes_for :epd_indicators
end
