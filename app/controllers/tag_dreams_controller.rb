class TagDreamsController < ApplicationController
  # GET /tag_dreams
  # GET /tag_dreams.json
  def index
    @tag_dreams = TagDream.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tag_dreams }
    end
  end

  # GET /tag_dreams/1
  # GET /tag_dreams/1.json
  def show
    @tag_dream = TagDream.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag_dream }
    end
  end

  # GET /tag_dreams/new
  # GET /tag_dreams/new.json
  def new
    @tag_dream = TagDream.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag_dream }
    end
  end

  # GET /tag_dreams/1/edit
  def edit
    @tag_dream = TagDream.find(params[:id])
  end

  # POST /tag_dreams
  # POST /tag_dreams.json
  def create
    @tag_dream = TagDream.new(params[:tag_dream])

    respond_to do |format|
      if @tag_dream.save
        format.html { redirect_to @tag_dream, notice: 'Tag dream was successfully created.' }
        format.json { render json: @tag_dream, status: :created, location: @tag_dream }
      else
        format.html { render action: "new" }
        format.json { render json: @tag_dream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tag_dreams/1
  # PUT /tag_dreams/1.json
  def update
    @tag_dream = TagDream.find(params[:id])

    respond_to do |format|
      if @tag_dream.update_attributes(params[:tag_dream])
        format.html { redirect_to @tag_dream, notice: 'Tag dream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag_dream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_dreams/1
  # DELETE /tag_dreams/1.json
  def destroy
    @tag_dream = TagDream.find(params[:id])
    @tag_dream.destroy

    respond_to do |format|
      format.html { redirect_to tag_dreams_url }
      format.json { head :no_content }
    end
  end
end
