class CategoriaUsuariosController < ApplicationController
  # GET /categoria_usuarios
  # GET /categoria_usuarios.xml
  def index
    @categoria_usuarios = CategoriaUsuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categoria_usuarios }
    end
  end

  # GET /categoria_usuarios/1
  # GET /categoria_usuarios/1.xml
  def show
    @categoria_usuario = CategoriaUsuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @categoria_usuario }
    end
  end

  # GET /categoria_usuarios/new
  # GET /categoria_usuarios/new.xml
  def new
    @categoria_usuario = CategoriaUsuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @categoria_usuario }
    end
  end

  # GET /categoria_usuarios/1/edit
  def edit
    @categoria_usuario = CategoriaUsuario.find(params[:id])
  end

  # POST /categoria_usuarios
  # POST /categoria_usuarios.xml
  def create
    @categoria_usuario = CategoriaUsuario.new(params[:categoria_usuario])

    respond_to do |format|
      if @categoria_usuario.save
        flash[:notice] = 'CategoriaUsuario was successfully created.'
        format.html { redirect_to(@categoria_usuario) }
        format.xml  { render :xml => @categoria_usuario, :status => :created, :location => @categoria_usuario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @categoria_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categoria_usuarios/1
  # PUT /categoria_usuarios/1.xml
  def update
    @categoria_usuario = CategoriaUsuario.find(params[:id])

    respond_to do |format|
      if @categoria_usuario.update_attributes(params[:categoria_usuario])
        flash[:notice] = 'CategoriaUsuario was successfully updated.'
        format.html { redirect_to(@categoria_usuario) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @categoria_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_usuarios/1
  # DELETE /categoria_usuarios/1.xml
  def destroy
    @categoria_usuario = CategoriaUsuario.find(params[:id])
    @categoria_usuario.destroy

    respond_to do |format|
      format.html { redirect_to(categoria_usuarios_url) }
      format.xml  { head :ok }
    end
  end
end
