class Customer < ActiveRecord::Base
has_many :invoices
#has_many :jobs :through=> :invoice

	def intestazione
	
		if ragione_sociale && !ragione_sociale.empty?
		ragione_sociale
		else
		nome + " " + cognome
		end
	end

end
