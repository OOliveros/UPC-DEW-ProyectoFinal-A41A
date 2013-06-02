class RegisterGroupsController < ApplicationController
  # GET /register_groups
  # GET /register_groups.json
  def index
    @register_groups = RegisterGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @register_groups }
    end
  end

  # GET /register_groups/1
  # GET /register_groups/1.json
  def show
    @register_group = RegisterGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @register_group }
    end
  end

  # GET /register_groups/new
  # GET /register_groups/new.json
  def new
    @register_group = RegisterGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @register_group }
    end
  end

  # GET /register_groups/1/edit
  def edit
    @register_group = RegisterGroup.find(params[:id])
  end

  # POST /register_groups
  # POST /register_groups.json
  def create
    @register_group = RegisterGroup.new(params[:register_group])

    respond_to do |format|
      if @register_group.save
        format.html { redirect_to @register_group, notice: 'Register group was successfully created.' }
        format.json { render json: @register_group, status: :created, location: @register_group }
      else
        format.html { render action: "new" }
        format.json { render json: @register_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /register_groups/1
  # PUT /register_groups/1.json
  def update
    @register_group = RegisterGroup.find(params[:id])

    respond_to do |format|
      if @register_group.update_attributes(params[:register_group])
        format.html { redirect_to @register_group, notice: 'Register group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @register_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_groups/1
  # DELETE /register_groups/1.json
  def destroy
    @register_group = RegisterGroup.find(params[:id])
    @register_group.destroy

    respond_to do |format|
      format.html { redirect_to register_groups_url }
      format.json { head :no_content }
    end
  end
end
