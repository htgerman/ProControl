class GarmenttypesController < ApplicationController
  # GET /garmenttypes
  # GET /garmenttypes.xml
  def index
    @garmenttypes = Garmenttype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @garmenttypes }
    end
  end

  # GET /garmenttypes/1
  # GET /garmenttypes/1.xml
  def show
    @garmenttype = Garmenttype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @garmenttype }
    end
  end

  # GET /garmenttypes/new
  # GET /garmenttypes/new.xml
  def new
    @garmenttype = Garmenttype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @garmenttype }
    end
  end

  # GET /garmenttypes/1/edit
  def edit
    @garmenttype = Garmenttype.find(params[:id])
  end

  # POST /garmenttypes
  # POST /garmenttypes.xml
  def create
    @garmenttype = Garmenttype.new(params[:garmenttype])

    respond_to do |format|
      if @garmenttype.save
        format.html { redirect_to(@garmenttype, :notice => 'Garmenttype was successfully created.') }
        format.xml  { render :xml => @garmenttype, :status => :created, :location => @garmenttype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @garmenttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /garmenttypes/1
  # PUT /garmenttypes/1.xml
  def update
    @garmenttype = Garmenttype.find(params[:id])

    respond_to do |format|
      if @garmenttype.update_attributes(params[:garmenttype])
        format.html { redirect_to(@garmenttype, :notice => 'Garmenttype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @garmenttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /garmenttypes/1
  # DELETE /garmenttypes/1.xml
  def destroy
    @garmenttype = Garmenttype.find(params[:id])
    @garmenttype.destroy

    respond_to do |format|
      format.html { redirect_to(garmenttypes_url) }
      format.xml  { head :ok }
    end
  end
end
