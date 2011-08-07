class RepertoiresController < ApplicationController
  # GET /repertoires
  # GET /repertoires.xml
  def index
    @repertoires = Repertoire.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @repertoires }
    end
  end

  # GET /repertoires/1
  # GET /repertoires/1.xml
  def show
    @repertoire = Repertoire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @repertoire }
    end
  end

  # GET /repertoires/new
  # GET /repertoires/new.xml
  def new
    @repertoire = Repertoire.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @repertoire }
    end
  end

  # GET /repertoires/1/edit
  def edit
    @repertoire = Repertoire.find(params[:id])
  end

  # POST /repertoires
  # POST /repertoires.xml
  def create
    @repertoire = Repertoire.new(params[:repertoire])

    respond_to do |format|
      if @repertoire.save
        format.html { redirect_to(@repertoire, :notice => 'Repertoire was successfully created.') }
        format.xml  { render :xml => @repertoire, :status => :created, :location => @repertoire }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @repertoire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /repertoires/1
  # PUT /repertoires/1.xml
  def update
    @repertoire = Repertoire.find(params[:id])

    respond_to do |format|
      if @repertoire.update_attributes(params[:repertoire])
        format.html { redirect_to(@repertoire, :notice => 'Repertoire was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @repertoire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /repertoires/1
  # DELETE /repertoires/1.xml
  def destroy
    @repertoire = Repertoire.find(params[:id])
    @repertoire.destroy

    respond_to do |format|
      format.html { redirect_to(repertoires_url) }
      format.xml  { head :ok }
    end
  end
end
