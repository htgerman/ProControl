class ExpensetypesController < ApplicationController
  # GET /expensetypes
  # GET /expensetypes.xml
  def index
    @expensetypes = Expensetype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expensetypes }
    end
  end

  # GET /expensetypes/1
  # GET /expensetypes/1.xml
  def show
    @expensetype = Expensetype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expensetype }
    end
  end

  # GET /expensetypes/new
  # GET /expensetypes/new.xml
  def new
    @expensetype = Expensetype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expensetype }
    end
  end

  # GET /expensetypes/1/edit
  def edit
    @expensetype = Expensetype.find(params[:id])
  end

  # POST /expensetypes
  # POST /expensetypes.xml
  def create
    @expensetype = Expensetype.new(params[:expensetype])

    respond_to do |format|
      if @expensetype.save
        format.html { redirect_to(@expensetype, :notice => 'Expense Type was successfully created.') }
        format.xml  { render :xml => @expensetype, :status => :created, :location => @expensetype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expensetype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expensetypes/1
  # PUT /expensetypes/1.xml
  def update
    @expensetype = Expensetype.find(params[:id])

    respond_to do |format|
      if @expensetype.update_attributes(params[:expensetype])
        format.html { redirect_to(@expensetype, :notice => 'Expense Type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @expensetype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expensetypes/1
  # DELETE /expensetypes/1.xml
  def destroy
    @expensetype = Expensetype.find(params[:id])
    @expensetype.destroy

    respond_to do |format|
      format.html { redirect_to(expensetypes_url) }
      format.xml  { head :ok }
    end
  end
end
