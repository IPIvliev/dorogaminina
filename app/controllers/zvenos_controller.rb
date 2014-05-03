class ZvenosController < ApplicationController
before_filter :authenticate_user!
  # GET /zvenos
  # GET /zvenos.json
  def index
    @zvenos = Zveno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zvenos }
    end
  end

  # GET /zvenos/1
  # GET /zvenos/1.json
  def show
    @zveno = Zveno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zveno }
    end
  end

  # GET /zvenos/new
  # GET /zvenos/new.json
  def new
    @zveno = Zveno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zveno }
    end
  end

  # GET /zvenos/1/edit
  def edit
    @zveno = Zveno.find(params[:id])
  end

  # POST /zvenos
  # POST /zvenos.json
  def create
    @zveno = Zveno.new(params[:zveno])

    respond_to do |format|
      if @zveno.save
        format.html { redirect_to zvenos_path, notice: 'Zveno was successfully created.' }
        format.json { render json: @zveno, status: :created, location: @zveno }
      else
        format.html { render action: "new" }
        format.json { render json: @zveno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zvenos/1
  # PUT /zvenos/1.json
  def update
    @zveno = Zveno.find(params[:id])

    respond_to do |format|
      if @zveno.update_attributes(params[:zveno])
        format.html { redirect_to zvenos_path, notice: 'Zveno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @zveno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zvenos/1
  # DELETE /zvenos/1.json
  def destroy
    @zveno = Zveno.find(params[:id])
    @zveno.destroy

    respond_to do |format|
      format.html { redirect_to zvenos_url }
      format.json { head :no_content }
    end
  end

  def edit_can
    @zveno = Zveno.find(params[:zveno])

    @zveno.toggle!(:can)
    
    redirect_to :back
  end
end
