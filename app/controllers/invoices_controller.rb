class InvoicesController < ApplicationController
  # GET /invoices
  # GET /invoices.xml
  def index
    @invoices = Invoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @invoices }
    end
  end

  # GET /invoices/1
  # GET /invoices/1.xml
  def show
    @invoice = Invoice.find(params[:id])
	#@tot_imponibile = @invoice.jobs.map{|x| x.importo * x.qty}.inject(0){|sum,item| sum + item}
	#@totale = @invoice.jobs.map{|x| (x.importo * x.qty) + (x.importo * x.qty * x.tipo_iva.aliquota / 100)}.inject(0){|sum,item| sum + item}
	
	@tot_imponibile = @invoice.jobs.map{|x| x.importo}.inject(0){|sum,item| sum + item}
	@totale = @invoice.jobs.map{|x| (x.importo) + (x.importo * x.tipo_iva.aliquota / 100)}.inject(0){|sum,item| sum + item}
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @invoice }
    end
  end

  # GET /invoices/new
  # GET /invoices/new.xml
  def new
    @invoice = Invoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @invoice }
    end
  end

  # GET /invoices/1/edit
  def edit
    @invoice = Invoice.find(params[:id])
  end

  # POST /invoices
  # POST /invoices.xml
  def create
    @invoice = Invoice.new(params[:invoice])

    respond_to do |format|
      if @invoice.save
        flash[:notice] = "Fattura creata con successo!\nClicca su \"Aggiungi Voce\" per proseguire."
        format.html { redirect_to(@invoice) }
        format.xml  { render :xml => @invoice, :status => :created, :location => @invoice }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @invoice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /invoices/1
  # PUT /invoices/1.xml
  def update
    @invoice = Invoice.find(params[:id])

    respond_to do |format|
      if @invoice.update_attributes(params[:invoice])
        flash[:notice] = 'Fattura modificata con successo!'
        format.html { redirect_to(@invoice) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @invoice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.xml
  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy

    respond_to do |format|
      format.html { redirect_to(invoices_url) }
      format.xml  { head :ok }
    end
  end
  
  def print
  
	  @invoice = Invoice.find(params[:id])
	  @tot_imponibile = @invoice.jobs.map{|x| x.importo}.inject(0){|sum,item| sum + item}
	@totale = @invoice.jobs.map{|x| (x.importo) + (x.importo * x.tipo_iva.aliquota / 100)}.inject(0){|sum,item| sum + item}
	  
	  
	  fl = File.new("C:\\temp\\#{@invoice.codice}.xml", 'w')
	  buffer = ''
	  buffer = render_to_string :action => "print", :layout => false

	  fl.puts buffer
	  fl.close
	  respond_to do |format|
	   flash[:notice] = "Fattura salvata in C:\\temp\\#{@invoice.codice}.xml"
      format.html { redirect_to(invoice_url(@invoice)) }
      format.xml  { head :ok }
    end
  
  end
  
  
end
