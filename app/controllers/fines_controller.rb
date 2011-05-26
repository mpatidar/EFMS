class FinesController < ApplicationController
  # GET /fines
  # GET /fines.xml
  def index
    @fines = Fine.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fines }
    end
  end

  # GET /fines/1
  # GET /fines/1.xml
  def show
    @fine = Fine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fine }
    end
  end

  # GET /fines/new
  # GET /fines/new.xml
  def new
    @fine = Fine.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fine }
    end
  end

  # GET /fines/1/edit
  def edit
    @fine = Fine.find(params[:id])
  end

  # POST /fines
  # POST /fines.xml
  def create
    @fine = Fine.new(params[:fine])

    respond_to do |format|
      if @fine.save
        format.html { redirect_to(@fine, :notice => 'Fine was successfully created.') }
        format.xml  { render :xml => @fine, :status => :created, :location => @fine }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fine.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fines/1
  # PUT /fines/1.xml
  def update
    @fine = Fine.find(params[:id])

    respond_to do |format|
      if @fine.update_attributes(params[:fine])
        format.html { redirect_to(@fine, :notice => 'Fine was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fine.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fines/1
  # DELETE /fines/1.xml
  def destroy
    @fine = Fine.find(params[:id])
    @fine.destroy

    respond_to do |format|
      format.html { redirect_to(fines_url) }
      format.xml  { head :ok }
    end
  end
end
