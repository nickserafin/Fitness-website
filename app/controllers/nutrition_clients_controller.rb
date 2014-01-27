class NutritionClientsController < ApplicationController
  # GET /nutrition_clients
  # GET /nutrition_clients.json
  def index
    @nutrition_clients = NutritionClient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nutrition_clients }
    end
  end

  # GET /nutrition_clients/1
  # GET /nutrition_clients/1.json
  def show
    @nutrition_client = NutritionClient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nutrition_client }
    end
  end

  # GET /nutrition_clients/new
  # GET /nutrition_clients/new.json
  def new
    @nutrition_client = NutritionClient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nutrition_client }
    end
  end

  # GET /nutrition_clients/1/edit
  def edit
    @nutrition_client = NutritionClient.find(params[:id])
  end

  # POST /nutrition_clients
  # POST /nutrition_clients.json
  def create
    @nutrition_client = NutritionClient.new(params[:nutrition_client])

    respond_to do |format|
      if @nutrition_client.save
        format.html { redirect_to @nutrition_client, notice: 'Nutrition client was successfully created.' }
        format.json { render json: @nutrition_client, status: :created, location: @nutrition_client }
      else
        format.html { render action: "new" }
        format.json { render json: @nutrition_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nutrition_clients/1
  # PUT /nutrition_clients/1.json
  def update
    @nutrition_client = NutritionClient.find(params[:id])

    respond_to do |format|
      if @nutrition_client.update_attributes(params[:nutrition_client])
        format.html { redirect_to @nutrition_client, notice: 'Nutrition client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nutrition_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutrition_clients/1
  # DELETE /nutrition_clients/1.json
  def destroy
    @nutrition_client = NutritionClient.find(params[:id])
    @nutrition_client.destroy

    respond_to do |format|
      format.html { redirect_to nutrition_clients_url }
      format.json { head :no_content }
    end
  end
end
