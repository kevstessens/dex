class DexesController < ApplicationController
  # GET /dexes
  # GET /dexes.json
  def index
    @dexes = Dex.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dexes }
    end
  end

  # GET /dexes/1
  # GET /dexes/1.json
  def show
    @dex = Dex.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dex }
    end
  end

  # GET /dexes/new
  # GET /dexes/new.json
  def new
    @dex = Dex.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dex }
    end
  end

  # GET /dexes/1/edit
  def edit
    @dex = Dex.find(params[:id])
  end

  # POST /dexes
  # POST /dexes.json
  def create
    @dex = Dex.new(params[:dex])

    respond_to do |format|
      if @dex.save
        format.html { redirect_to @dex, notice: 'Dex was successfully created.' }
        format.json { render json: @dex, status: :created, location: @dex }
      else
        format.html { render action: "new" }
        format.json { render json: @dex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dexes/1
  # PUT /dexes/1.json
  def update
    @dex = Dex.find(params[:id])

    respond_to do |format|
      if @dex.update_attributes(params[:dex])
        format.html { redirect_to @dex, notice: 'Dex was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dexes/1
  # DELETE /dexes/1.json
  def destroy
    @dex = Dex.find(params[:id])
    @dex.destroy

    respond_to do |format|
      format.html { redirect_to dexes_url }
      format.json { head :no_content }
    end
  end
end
