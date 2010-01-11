class Job < ActiveRecord::Base
belongs_to :tipo_iva
belongs_to :invoice
belongs_to :customer

validates_presence_of :descrizione, :message=>": Inserire una descrizione per la voce fattura!"
validates_presence_of :importo, :message=>": Quantificare un importo per la voce fattura!"
end
