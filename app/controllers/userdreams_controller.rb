class UserdreamsController < ApplicationController
  # GET /userdreams
  # GET /userdreams.json
  def index
    @userdreams = Userdream.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userdreams }
    end
  end

  # GET /userdreams/1
  # GET /userdreams/1.json
  def show
    @userdream = Userdream.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userdream }
    end
  end

  # GET /userdreams/new
  # GET /userdreams/new.json
  def new
    @userdream = Userdream.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userdream }
    end
  end

  # GET /userdreams/1/edit
  def edit
    @userdream = Userdream.find(params[:id])
  end

  # POST /userdreams
  # POST /userdreams.json
  def create
    @userdream = Userdream.new(params[:userdream])

    respond_to do |format|
      if @userdream.save
        format.html { redirect_to @userdream, notice: 'Userdream was successfully created.' }
        format.json { render json: @userdream, status: :created, location: @userdream }
      else
        format.html { render action: "new" }
        format.json { render json: @userdream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userdreams/1
  # PUT /userdreams/1.json
  def update
    @userdream = Userdream.find(params[:id])

    respond_to do |format|
      if @userdream.update_attributes(params[:userdream])
        format.html { redirect_to @userdream, notice: 'Userdream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userdream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userdreams/1
  # DELETE /userdreams/1.json
  def destroy
    @userdream = Userdream.find(params[:id])
    @userdream.destroy

    respond_to do |format|
      format.html { redirect_to userdreams_url }
      format.json { head :no_content }
    end
  end
end
