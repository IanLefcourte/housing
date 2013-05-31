class HousingParentsController < ApplicationController
  # GET /housing_parents
  # GET /housing_parents.json
  def index
    @housing_parents = HousingParent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @housing_parents }
    end
  end

  # GET /housing_parents/1
  # GET /housing_parents/1.json
  def show
    @housing_parent = HousingParent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @housing_parent }
    end
  end

  # GET /housing_parents/new
  # GET /housing_parents/new.json
  def new
    @housing_parent = HousingParent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @housing_parent }
    end
  end

  # GET /housing_parents/1/edit
  def edit
    @housing_parent = HousingParent.find(params[:id])
  end

  # POST /housing_parents
  # POST /housing_parents.json
  def create
    @housing_parent = HousingParent.new(params[:housing_parent])

    respond_to do |format|
      if @housing_parent.save
        format.html { redirect_to @housing_parent, notice: 'Housing parent was successfully created.' }
        format.json { render json: @housing_parent, status: :created, location: @housing_parent }
      else
        format.html { render action: "new" }
        format.json { render json: @housing_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /housing_parents/1
  # PUT /housing_parents/1.json
  def update
    @housing_parent = HousingParent.find(params[:id])

    respond_to do |format|
      if @housing_parent.update_attributes(params[:housing_parent])
        format.html { redirect_to @housing_parent, notice: 'Housing parent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @housing_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housing_parents/1
  # DELETE /housing_parents/1.json
  def destroy
    @housing_parent = HousingParent.find(params[:id])
    @housing_parent.destroy

    respond_to do |format|
      format.html { redirect_to housing_parents_url }
      format.json { head :no_content }
    end
  end
end
