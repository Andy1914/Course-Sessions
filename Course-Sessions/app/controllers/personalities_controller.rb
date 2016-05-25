class PersonalitiesController < ApplicationController
  # GET /personalities
  # GET /personalities.json
  def index
    @personalities = Personality.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personalities }
    end
  end

  # GET /personalities/1
  # GET /personalities/1.json
  def show
    @personality = Personality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personality }
    end
  end

  # GET /personalities/new
  # GET /personalities/new.json
  def new
    @personality = Personality.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personality }
    end
  end

  # GET /personalities/1/edit
  def edit
    @personality = Personality.find(params[:id])
  end

  # POST /personalities
  # POST /personalities.json
  def create
    @personality = Personality.new(params[:personality])

    respond_to do |format|
      if @personality.save
        format.html { redirect_to @personality, notice: 'Personality was successfully created.' }
        format.json { render json: @personality, status: :created, location: @personality }
      else
        format.html { render action: "new" }
        format.json { render json: @personality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personalities/1
  # PUT /personalities/1.json
  def update
    @personality = Personality.find(params[:id])

    respond_to do |format|
      if @personality.update_attributes(params[:personality])
        format.html { redirect_to @personality, notice: 'Personality was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personalities/1
  # DELETE /personalities/1.json
  def destroy
    @personality = Personality.find(params[:id])
    @personality.destroy

    respond_to do |format|
      format.html { redirect_to personalities_url }
      format.json { head :no_content }
    end
  end
end
