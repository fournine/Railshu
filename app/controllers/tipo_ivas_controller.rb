class TipoIvasController < ApplicationController
  # GET /tipo_ivas
  # GET /tipo_ivas.xml
  def index
    @tipo_ivas = TipoIva.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_ivas }
    end
  end

  # GET /tipo_ivas/1
  # GET /tipo_ivas/1.xml
  def show
    @tipo_iva = TipoIva.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_iva }
    end
  end

  # GET /tipo_ivas/new
  # GET /tipo_ivas/new.xml
  def new
    @tipo_iva = TipoIva.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_iva }
    end
  end

  # GET /tipo_ivas/1/edit
  def edit
    @tipo_iva = TipoIva.find(params[:id])
  end

  # POST /tipo_ivas
  # POST /tipo_ivas.xml
  def create
    @tipo_iva = TipoIva.new(params[:tipo_iva])

    respond_to do |format|
      if @tipo_iva.save
        flash[:notice] = 'TipoIva was successfully created.'
        format.html { redirect_to(@tipo_iva) }
        format.xml  { render :xml => @tipo_iva, :status => :created, :location => @tipo_iva }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_iva.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_ivas/1
  # PUT /tipo_ivas/1.xml
  def update
    @tipo_iva = TipoIva.find(params[:id])

    respond_to do |format|
      if @tipo_iva.update_attributes(params[:tipo_iva])
        flash[:notice] = 'TipoIva was successfully updated.'
        format.html { redirect_to(@tipo_iva) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_iva.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_ivas/1
  # DELETE /tipo_ivas/1.xml
  def destroy
    @tipo_iva = TipoIva.find(params[:id])
    @tipo_iva.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_ivas_url) }
      format.xml  { head :ok }
    end
  end
end
