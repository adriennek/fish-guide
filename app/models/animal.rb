class Animal < ActiveRecord::Base
	validates :name, :description, presence: true
end
