class Signspot::ProjectsController < ApplicationController
  # GET /signspot/projects
  # GET /signspot/projects.json
  def index
    @signspot_projects = Signspot::Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @signspot_projects }
    end
  end

  # GET /signspot/projects/1
  # GET /signspot/projects/1.json
  def show
    @signspot_project = Signspot::Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @signspot_project }
    end
  end

  # GET /signspot/projects/new
  # GET /signspot/projects/new.json
  def new
    @signspot_project = Signspot::Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @signspot_project }
    end
  end

  # GET /signspot/projects/1/edit
  def edit
    @signspot_project = Signspot::Project.find(params[:id])
  end

  # POST /signspot/projects
  # POST /signspot/projects.json
  def create
    @signspot_project = Signspot::Project.new(params[:signspot_project])

    respond_to do |format|
      if @signspot_project.save
        format.html { redirect_to @signspot_project, notice: 'Project was successfully created.' }
        format.json { render json: @signspot_project, status: :created, location: @signspot_project }
      else
        format.html { render action: "new" }
        format.json { render json: @signspot_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /signspot/projects/1
  # PUT /signspot/projects/1.json
  def update
    @signspot_project = Signspot::Project.find(params[:id])

    respond_to do |format|
      if @signspot_project.update_attributes(params[:signspot_project])
        format.html { redirect_to @signspot_project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @signspot_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signspot/projects/1
  # DELETE /signspot/projects/1.json
  def destroy
    @signspot_project = Signspot::Project.find(params[:id])
    @signspot_project.destroy

    respond_to do |format|
      format.html { redirect_to signspot_projects_url }
      format.json { head :no_content }
    end
  end
end
