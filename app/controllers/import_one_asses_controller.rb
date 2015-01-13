class ImportOneAssesController < ApplicationController
  before_action :set_import_one_ass, only: [:show, :edit, :update, :destroy]

  # GET /import_one_asses
  # GET /import_one_asses.json
  def index
    @import_one_asses = ImportOneAss.all
  end

  # GET /import_one_asses/1
  # GET /import_one_asses/1.json
  def show
    if params[:i]
      render xml: @import_one_ass.import_xml
    elsif params[:o]
      render xml: @import_one_ass.offers_xml
    end
  end

  # GET /import_one_asses/new
  def new
    @import_one_ass = ImportOneAss.new
  end

  # GET /import_one_asses/1/edit
  def edit
  end

  # POST /import_one_asses
  # POST /import_one_asses.json
  def create
    @import_one_ass = ImportOneAss.new(import_one_ass_params)

    respond_to do |format|
      if @import_one_ass.save
        format.html { redirect_to @import_one_ass, notice: 'Import one ass was successfully created.' }
        format.json { render :show, status: :created, location: @import_one_ass }
      else
        format.html { render :new }
        format.json { render json: @import_one_ass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_one_asses/1
  # PATCH/PUT /import_one_asses/1.json
  def update
    respond_to do |format|
      if @import_one_ass.update(import_one_ass_params)
        format.html { redirect_to @import_one_ass, notice: 'Import one ass was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_one_ass }
      else
        format.html { render :edit }
        format.json { render json: @import_one_ass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_one_asses/1
  # DELETE /import_one_asses/1.json
  def destroy
    @import_one_ass.destroy
    respond_to do |format|
      format.html { redirect_to import_one_asses_url, notice: 'Import one ass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_one_ass
      @import_one_ass = ImportOneAss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_one_ass_params
      params.require(:import_one_ass).permit(:import_xml, :offers_xml)
    end
end
