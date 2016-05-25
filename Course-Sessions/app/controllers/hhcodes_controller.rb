class HhcodesController < ApplicationController
  # GET /hhcodes
  # GET /hhcodes.json
  def index
    @hhcodes = Hhcode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hhcodes }
    end
  end

  # GET /hhcodes/1
  # GET /hhcodes/1.json
  def show
    @hhcode = Hhcode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hhcode }
    end
  end

  # GET /hhcodes/new
  # GET /hhcodes/new.json
  def new
    @hhcode = Hhcode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hhcode }
    end
  end

  # GET /hhcodes/1/edit
  def edit
    @hhcode = Hhcode.find(params[:id])
  end

  # POST /hhcodes
  # POST /hhcodes.json
  def create
    @hhcode = Hhcode.new(params[:hhcode])

    respond_to do |format|
      if @hhcode.save
        format.html { redirect_to @hhcode, notice: 'Hhcode was successfully created.' }
        format.json { render json: @hhcode, status: :created, location: @hhcode }
      else
        format.html { render action: "new" }
        format.json { render json: @hhcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hhcodes/1
  # PUT /hhcodes/1.json
  def update
    @hhcode = Hhcode.find(params[:id])

    respond_to do |format|
      if @hhcode.update_attributes(params[:hhcode])
        format.html { redirect_to @hhcode, notice: 'Hhcode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hhcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hhcodes/1
  # DELETE /hhcodes/1.json
  def destroy
    @hhcode = Hhcode.find(params[:id])
    @hhcode.destroy

    respond_to do |format|
      format.html { redirect_to hhcodes_url }
      format.json { head :no_content }
    end
  end
end
