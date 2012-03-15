class ItemUserdreamsController < ApplicationController
  # GET /item_userdreams
  # GET /item_userdreams.json
  def index
    @item_userdreams = ItemUserdream.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @item_userdreams }
    end
  end

  # GET /item_userdreams/1
  # GET /item_userdreams/1.json
  def show
    @item_userdream = ItemUserdream.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item_userdream }
    end
  end

  # GET /item_userdreams/new
  # GET /item_userdreams/new.json
  def new
    @item_userdream = ItemUserdream.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item_userdream }
    end
  end

  # GET /item_userdreams/1/edit
  def edit
    @item_userdream = ItemUserdream.find(params[:id])
  end

  # POST /item_userdreams
  # POST /item_userdreams.json
  def create
    @item_userdream = ItemUserdream.new(params[:item_userdream])

    respond_to do |format|
      if @item_userdream.save
        format.html { redirect_to @item_userdream, notice: 'Item userdream was successfully created.' }
        format.json { render json: @item_userdream, status: :created, location: @item_userdream }
      else
        format.html { render action: "new" }
        format.json { render json: @item_userdream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /item_userdreams/1
  # PUT /item_userdreams/1.json
  def update
    @item_userdream = ItemUserdream.find(params[:id])

    respond_to do |format|
      if @item_userdream.update_attributes(params[:item_userdream])
        format.html { redirect_to @item_userdream, notice: 'Item userdream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item_userdream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_userdreams/1
  # DELETE /item_userdreams/1.json
  def destroy
    @item_userdream = ItemUserdream.find(params[:id])
    @item_userdream.destroy

    respond_to do |format|
      format.html { redirect_to item_userdreams_url }
      format.json { head :no_content }
    end
  end
end
