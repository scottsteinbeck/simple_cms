class Subject < ActiveRecord::Base

	has_many :pages

	def self.visible 
		where(:visible => true)
	end
	def self.invisible 
		where(:visible => false)
	end
	def self.search(query)
		q = "%#{query}%"
		where("name LIKE ?", q)
	end
end


