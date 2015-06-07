class Animal < ActiveRecord::Base
	validates :name, :description, presence: true
	FAMILIES= ['Roundfish', 'Flatfish', 'Rockfish', 'Mammal', 'Salmon', 'Skate', 'Sculpin', 'Incidental', 'Invertebrate']
	
end
