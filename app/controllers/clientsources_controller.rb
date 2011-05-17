class ClientsourcesController < ApplicationController
  # GET /clientsources
  # GET /clientsources.xml
  def index
    @clientsources = Clientsource.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clientsources }
    end
  end

  # GET /clientsources/1
  # GET /clientsources/1.xml
  def show
    @clientsource = Clientsource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clientsource }
    end
  end

  # GET /clientsources/new
  # GET /clientsources/new.xml
  def new
    @clientsource = Clientsource.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clientsource }
    end
  end

  # GET /clientsources/1/edit
  def edit
    @clientsource = Clientsource.find(params[:id])
  end

  # POST /clientsources
  # POST /clientsources.xml
  def create
    @clientsource = Clientsource.new(params[:clientsource])

    respond_to do |format|
      if @clientsource.save
        format.html { redirect_to(@clientsource, :notice => 'Clientsource was successfully created.') }
        format.xml  { render :xml => @clientsource, :status => :created, :location => @clientsource }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clientsource.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clientsources/1
  # PUT /clientsources/1.xml
  def update
    @clientsource = Clientsource.find(params[:id])

    respond_to do |format|
      if @clientsource.update_attributes(params[:clientsource])
        format.html { redirect_to(@clientsource, :notice => 'Clientsource was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clientsource.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clientsources/1
  # DELETE /clientsources/1.xml
  def destroy
    @clientsource = Clientsource.find(params[:id])
    @clientsource.destroy

    respond_to do |format|
    #  format.html { redirect_to(clientsources_url) }
      format.html { redirect_to(config_url) }
      format.xml  { head :ok }
    end
  end
end
