class TipoIva < ActiveRecord::Base
has_many :jobs

validates_presence_of :aliquota, :message=>": inserire un valore numerico!\nNON usare il simbolo di percentuale(%)"
end
