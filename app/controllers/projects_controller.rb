class ProjectsController < ApplicationController
	
	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @post = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:projets).permit(:title, :subtitle, :description, :original_url, :translation_url, :contributor, :contributor_url)
    end

end
