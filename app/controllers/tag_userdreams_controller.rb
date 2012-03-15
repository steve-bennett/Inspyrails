class TagUserdreamsController < ApplicationController
  # GET /tag_userdreams
  # GET /tag_userdreams.json
  def index
    @tag_userdreams = TagUserdream.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tag_userdreams }
    end
  end

  # GET /tag_userdreams/1
  # GET /tag_userdreams/1.json
  def show
    @tag_userdream = TagUserdream.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag_userdream }
    end
  end

  # GET /tag_userdreams/new
  # GET /tag_userdreams/new.json
  def new
    @tag_userdream = TagUserdream.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag_userdream }
    end
  end

  # GET /tag_userdreams/1/edit
  def edit
    @tag_userdream = TagUserdream.find(params[:id])
  end

  # POST /tag_userdreams
  # POST /tag_userdreams.json
  def create
    @tag_userdream = TagUserdream.new(params[:tag_userdream])

    respond_to do |format|
      if @tag_userdream.save
        format.html { redirect_to @tag_userdream, notice: 'Tag userdream was successfully created.' }
        format.json { render json: @tag_userdream, status: :created, location: @tag_userdream }
      else
        format.html { render action: "new" }
        format.json { render json: @tag_userdream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tag_userdreams/1
  # PUT /tag_userdreams/1.json
  def update
    @tag_userdream = TagUserdream.find(params[:id])

    respond_to do |format|
      if @tag_userdream.update_attributes(params[:tag_userdream])
        format.html { redirect_to @tag_userdream, notice: 'Tag userdream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag_userdream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_userdreams/1
  # DELETE /tag_userdreams/1.json
  def destroy
    @tag_userdream = TagUserdream.find(params[:id])
    @tag_userdream.destroy

    respond_to do |format|
      format.html { redirect_to tag_userdreams_url }
      format.json { head :no_content }
    end
  end
end
