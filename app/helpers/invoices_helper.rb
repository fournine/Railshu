module InvoicesHelper

 def importo_zeroes(cifra)
	"%.2f" % cifra 
 end

 def numero_fattura
    Invoice.find(:all, :conditions=> {:data_fattura => DateTime.new(DateTime.now.year)..DateTime.now }).count + 1
 end

end
