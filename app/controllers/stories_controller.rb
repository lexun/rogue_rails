class StoriesController < ApplicationController
  before_filter :find_project

  def index
    @stories = @project.stories.order('position DESC')
  end

  def new    
    @story = @project.stories.build 
  end

  def create
    @story = @project.stories.build(story_params)

    if @story.save
      flash[:success] = 'New story created.'
      redirect_to project_stories_path(@project)
    else
      flash[:error] = 'Story could not be created.'
      render 'new'
    end
  end


  def edit
    @story = @project.stories.find(params[:id])
  end


  def update
    @story = @project.stories.find(params[:id])
    if @story.update_attributes(story_params)
      flash[:success] = 'Story saved'
      redirect_to project_stories_path(@project)
    else
      flash[:error] = 'Story could not be saved.'
      render 'edit'
    end
  end

  def sort
    params[:story].reverse.each_with_index do |id, index|
      @project.stories.where(id: id).update_all position: index+1
    end
    render nothing: true
  end


  def destroy
    @story = @project.stories.find(params[:id])
    @story.destroy
    flash[:success] = 'Story was deleted.'
    redirect_to project_stories_path(@project)
  end


  private

  def story_params
    params.required(:story).permit(:title, :in_order_to, :as_a, :i_want_to, :value, :complexity)
  end

  def find_project 
    @project = Project.find(params[:project_id])
    @project_name = @project.name
  end

end
