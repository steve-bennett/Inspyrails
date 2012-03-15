class MetaItemsController < ApplicationController
  # GET /meta_items
  # GET /meta_items.json
  def index
    @meta_items = MetaItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meta_items }
    end
  end

  # GET /meta_items/1
  # GET /meta_items/1.json
  def show
    @meta_item = MetaItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meta_item }
    end
  end

  # GET /meta_items/new
  # GET /meta_items/new.json
  def new
    @meta_item = MetaItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meta_item }
    end
  end

  # GET /meta_items/1/edit
  def edit
    @meta_item = MetaItem.find(params[:id])
  end

  # POST /meta_items
  # POST /meta_items.json
  def create
    @meta_item = MetaItem.new(params[:meta_item])

    respond_to do |format|
      if @meta_item.save
        format.html { redirect_to @meta_item, notice: 'Meta item was successfully created.' }
        format.json { render json: @meta_item, status: :created, location: @meta_item }
      else
        format.html { render action: "new" }
        format.json { render json: @meta_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meta_items/1
  # PUT /meta_items/1.json
  def update
    @meta_item = MetaItem.find(params[:id])

    respond_to do |format|
      if @meta_item.update_attributes(params[:meta_item])
        format.html { redirect_to @meta_item, notice: 'Meta item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meta_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meta_items/1
  # DELETE /meta_items/1.json
  def destroy
    @meta_item = MetaItem.find(params[:id])
    @meta_item.destroy

    respond_to do |format|
      format.html { redirect_to meta_items_url }
      format.json { head :no_content }
    end
  end
end
