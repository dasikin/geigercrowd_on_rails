class SamplesController < ApplicationController
  # GET /samples
  def index
    @samples = Sample.all
  end

  # GET /samples/1
  def show
    @sample = Sample.find(params[:id])
  end

  # GET /samples/new
  def new
    @data_types = DataType.all
    @sample = Sample.new
  end

  # GET /samples/1/edit
  def edit
    @data_types = DataType.all
    @sample = Sample.find(params[:id])
  end

  # POST /samples
  def create
    @sample = Sample.new(params[:sample])

    if @sample.save
      redirect_to(@sample, :notice => 'Sample was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /samples/1
  def update
    @sample = Sample.find(params[:id])
    if @sample.update_attributes(params[:sample])
      redirect_to(@sample, :notice => 'Sample was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /samples/1
  def destroy
    @sample = Sample.find(params[:id])
    @sample.destroy
    redirect_to(samples_url)
  end
end
