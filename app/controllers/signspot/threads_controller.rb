class Signspot::ThreadsController < ApplicationController
  # GET /signspot/threads
  # GET /signspot/threads.json
  def index
    @signspot_threads = Signspot::Thread.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @signspot_threads }
    end
  end

  # GET /signspot/threads/1
  # GET /signspot/threads/1.json
  def show
    @signspot_thread = Signspot::Thread.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @signspot_thread }
    end
  end

  # GET /signspot/threads/new
  # GET /signspot/threads/new.json
  def new
    @signspot_thread = Signspot::Thread.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @signspot_thread }
    end
  end

  # GET /signspot/threads/1/edit
  def edit
    @signspot_thread = Signspot::Thread.find(params[:id])
  end

  # POST /signspot/threads
  # POST /signspot/threads.json
  def create
    @signspot_thread = Signspot::Thread.new(params[:signspot_thread])

    respond_to do |format|
      if @signspot_thread.save
        format.html { redirect_to @signspot_thread, notice: 'Thread was successfully created.' }
        format.json { render json: @signspot_thread, status: :created, location: @signspot_thread }
      else
        format.html { render action: "new" }
        format.json { render json: @signspot_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /signspot/threads/1
  # PUT /signspot/threads/1.json
  def update
    @signspot_thread = Signspot::Thread.find(params[:id])

    respond_to do |format|
      if @signspot_thread.update_attributes(params[:signspot_thread])
        format.html { redirect_to @signspot_thread, notice: 'Thread was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @signspot_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signspot/threads/1
  # DELETE /signspot/threads/1.json
  def destroy
    @signspot_thread = Signspot::Thread.find(params[:id])
    @signspot_thread.destroy

    respond_to do |format|
      format.html { redirect_to signspot_threads_url }
      format.json { head :no_content }
    end
  end
end
