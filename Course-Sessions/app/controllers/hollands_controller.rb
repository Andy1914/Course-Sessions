class HollandsController < ApplicationController
  # GET /hollands
  # GET /hollands.json
  def index
    @hollands = Holland.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hollands }
    end
  end

  # GET /hollands/1
  # GET /hollands/1.json
  def show
    @holland = Holland.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @holland }
    end
  end

  # GET /hollands/new
  # GET /hollands/new.json
  def new
    @holland = Holland.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @holland }
    end
  end

  # GET /hollands/1/edit
  def edit
    @holland = Holland.find(params[:id])
  end

  # POST /hollands
  # POST /hollands.json
  def create
    @holland = Holland.new(params[:holland])

    respond_to do |format|
      if @holland.save
        format.html { redirect_to @holland, notice: 'Holland was successfully created.' }
        format.json { render json: @holland, status: :created, location: @holland }
      else
        format.html { render action: "new" }
        format.json { render json: @holland.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hollands/1
  # PUT /hollands/1.json
  def update
    @holland = Holland.find(params[:id])

    respond_to do |format|
      if @holland.update_attributes(params[:holland])
        format.html { redirect_to @holland, notice: 'Holland was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @holland.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hollands/1
  # DELETE /hollands/1.json
  def destroy
    @holland = Holland.find(params[:id])
    @holland.destroy

    respond_to do |format|
      format.html { redirect_to hollands_url }
      format.json { head :no_content }
    end
  end
end
