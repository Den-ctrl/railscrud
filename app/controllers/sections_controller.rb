class SectionsController < ApplicationController
  load_and_authorize_resource :section, class_name: "Section", find_by: :public_uid

  # GET /sections or /sections.json
  def index
    @search = Section.search do
      fulltext params[:search ]
    end
    
    @sections = @search.results
  end

  # GET /sections/1 or /sections/1.json
  def show;
  end

  # GET /sections/new
  def new
  
    @parent = Section.find_by(public_uid: params[:parent_id]) if params[:parent_id].present?
  
  end

  # GET /sections/1/edit
  def edit; end

  # POST /sections or /sections.json
  def create
    respond_to do |format|
      if @section.save
        format.html { redirect_to section_url(@section), notice: "Section was successfully created." }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sections/1 or /sections/1.json
  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to section_url(@section), notice: "Section was successfully updated." }
        format.json { render :show, status: :ok, location: @section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1 or /sections/1.json
  def destroy
    @section.destroy!

    respond_to do |format|
      format.html { redirect_to sections_url, notice: "Section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def resource_params
      params.require(:section).permit(:name, :short_name, :parent_id)
    end
end
