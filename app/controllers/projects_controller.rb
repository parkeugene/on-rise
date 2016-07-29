class ProjectsController < ApplicationController

  def index
    @lists = Project.all
  end

  def new
  end

  def create
    post = Project.new
    post.user_id = session[:user_id]
    post.user_id = params[:project_id]
    post.title = params[:project_title]
    post.team = params[:team_name]
    post.language = params[:language]
    post.link = params[:project_link]
    post.date = params[:project_start]
    post.image = params[:proejct_image]
    post.progress = params[:progress]
    post.applicant = params[:applicant]
    post.content = params[:project_content]
    if post.save
      flash[:alert] = "저장되었습니다."
      redirect_to "/projects"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

  def show
    @post = Project.find(params[:id])
  end

  def delete
  end

  def delete_complete
    post = Project.find(params[:id])
    if post.destroy
      post.destroy
      flash[:alert] = "삭제되었습니다."
      redirect_to "/"
    else
      flash[:alert] = "삭제에 실패하였습니다."
      redirect_to :back
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def edit_complete
    post = Post.find(params[:id])
    post.user_id = session[:user_id]
    post.user_id = params[:project_id]
    post.title = params[:project_title]
    post.team = params[:team_name]
    post.language = params[:language]
    post.link = params[:project_link]
    post.date = params[:project_start]
    post.image = params[:proejct_image]
    post.progress = params[:progress]
    post.applicant = params[:applicant]
    post.content = params[content]
    if post.save
      flash[:alert] = "수정되었습니다."
      redirect_to "/projects/show/#{project.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

end
