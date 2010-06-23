class ItemMenusController < ApplicationController
  # GET /item_menus
  # GET /item_menus.xml
  def index
    @item_menus = ItemMenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_menus }
    end
  end

  # GET /item_menus/1
  # GET /item_menus/1.xml
  def show
    @item_menu = ItemMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_menu }
    end
  end

  # GET /item_menus/new
  # GET /item_menus/new.xml
  def new
    @item_menu = ItemMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_menu }
    end
  end

  # GET /item_menus/1/edit
  def edit
    @item_menu = ItemMenu.find(params[:id])
  end

  # POST /item_menus
  # POST /item_menus.xml
  def create
    @item_menu = ItemMenu.new(params[:item_menu])

    respond_to do |format|
      if @item_menu.save
        flash[:notice] = 'ItemMenu was successfully created.'
        format.html { redirect_to(@item_menu) }
        format.xml  { render :xml => @item_menu, :status => :created, :location => @item_menu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_menus/1
  # PUT /item_menus/1.xml
  def update
    @item_menu = ItemMenu.find(params[:id])

    respond_to do |format|
      if @item_menu.update_attributes(params[:item_menu])
        flash[:notice] = 'ItemMenu was successfully updated.'
        format.html { redirect_to(@item_menu) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_menus/1
  # DELETE /item_menus/1.xml
  def destroy
    @item_menu = ItemMenu.find(params[:id])
    @item_menu.destroy

    respond_to do |format|
      format.html { redirect_to(item_menus_url) }
      format.xml  { head :ok }
    end
  end
end
