class TagItemsController < ApplicationController
  # GET /tag_items
  # GET /tag_items.json
  def index
    @tag_items = TagItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tag_items }
    end
  end

  # GET /tag_items/1
  # GET /tag_items/1.json
  def show
    @tag_item = TagItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag_item }
    end
  end

  # GET /tag_items/new
  # GET /tag_items/new.json
  def new
    @tag_item = TagItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag_item }
    end
  end

  # GET /tag_items/1/edit
  def edit
    @tag_item = TagItem.find(params[:id])
  end

  # POST /tag_items
  # POST /tag_items.json
  def create
    @tag_item = TagItem.new(params[:tag_item])

    respond_to do |format|
      if @tag_item.save
        format.html { redirect_to @tag_item, notice: 'Tag item was successfully created.' }
        format.json { render json: @tag_item, status: :created, location: @tag_item }
      else
        format.html { render action: "new" }
        format.json { render json: @tag_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tag_items/1
  # PUT /tag_items/1.json
  def update
    @tag_item = TagItem.find(params[:id])

    respond_to do |format|
      if @tag_item.update_attributes(params[:tag_item])
        format.html { redirect_to @tag_item, notice: 'Tag item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_items/1
  # DELETE /tag_items/1.json
  def destroy
    @tag_item = TagItem.find(params[:id])
    @tag_item.destroy

    respond_to do |format|
      format.html { redirect_to tag_items_url }
      format.json { head :no_content }
    end
  end
end
