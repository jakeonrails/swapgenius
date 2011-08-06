class NeedsController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :show]

  # GET /needs
  # GET /needs.xml
  def index
    @needs = Need.all.paginate :page => params[:page], :order => 'created_at DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @needs }
    end
  end

  # GET /needs/1
  # GET /needs/1.xml
  def show
    @need = Need.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @need }
    end
  end

  # GET /needs/new
  # GET /needs/new.xml
  def new
    @need = current_user.needs.new


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @need }
    end
  end

  # GET /needs/1/edit
  def edit
    @need = current_user.needs.find(params[:id])
  end

  # POST /needs
  # POST /needs.xml
  def create
    @need = current_user.needs.new(params[:need])

    respond_to do |format|
      if @need.save
        format.html { redirect_to(@need, :notice => 'Need was successfully created.') }
        format.xml  { render :xml => @need, :status => :created, :location => @need }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @need.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /needs/1
  # PUT /needs/1.xml
  def update
    @need = current_user.needs.find(params[:id])

    respond_to do |format|
      if @need.update_attributes(params[:need])
        format.html { redirect_to(@need, :notice => 'Need was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @need.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /needs/1
  # DELETE /needs/1.xml
  def destroy
    @need = current_user.needs.find(params[:id])
    @need.destroy

    respond_to do |format|
      format.html { redirect_to(needs_url) }
      format.xml  { head :ok }
    end
  end
end

