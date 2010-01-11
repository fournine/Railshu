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
	
	def validate
  errors.add(:ragione_sociale, ": Inserire la ragione sociale o il cognome!") if ragione_sociale.blank? && cognome.blank?
  errors.add(:cognome, ": Inserire la ragione sociale o il cognome!") if ragione_sociale.blank? && cognome.blank?
end 

end
