class GarmentmodelsController < ApplicationController
  # GET /garmentmodels
  # GET /garmentmodels.xml
  def index
    
    @garmentmodels = Garmentmodel.order("updated_at desc")
    #Garmenttypes for selection in Filter
    @garmenttypes = Garmenttype.ingarmentmodels
    #Filter by Garmenttype
    if params[:garmenttype_id]
      @garmentmodels = Garmentmodel.find_all_by_garmenttype_id( params[:garmenttype_id]).sort_by{ |k| k['name'] }
      @garmenttype = Garmenttype.find(params[:garmenttype_id])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @garmentmodels }
    end
  end

  # GET /garmentmodels/1
  # GET /garmentmodels/1.xml
  def show
    @garmentmodel = Garmentmodel.find(params[:id])
    @noteable = @garmentmodel
   
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @garmentmodel }
    end
  end

  # GET /garmentmodels/new
  # GET /garmentmodels/new.xml
  def new
    @garmentmodel = Garmentmodel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @garmentmodel }
    end
  end

  # GET /garmentmodels/1/edit
  def edit
    @garmentmodel = Garmentmodel.find(params[:id])
  end

  # POST /garmentmodels
  # POST /garmentmodels.xml
  def create
    @garmentmodel = Garmentmodel.new(params[:garmentmodel])

    respond_to do |format|
      if @garmentmodel.save
        format.html { redirect_to(@garmentmodel, :notice => 'Garmentmodel was successfully created.') }
        format.xml  { render :xml => @garmentmodel, :status => :created, :location => @garmentmodel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @garmentmodel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /garmentmodels/1
  # PUT /garmentmodels/1.xml
  def update
    @garmentmodel = Garmentmodel.find(params[:id])

    respond_to do |format|
      if @garmentmodel.update_attributes(params[:garmentmodel])
        format.html { redirect_to(@garmentmodel, :notice => 'Garmentmodel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @garmentmodel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /garmentmodels/1
  # DELETE /garmentmodels/1.xml
  def destroy
    @garmentmodel = Garmentmodel.find(params[:id])
    @garmentmodel.destroy

    respond_to do |format|
      format.html { redirect_to(garmentmodels_url) }
      format.xml  { head :ok }
    end
  end
end
