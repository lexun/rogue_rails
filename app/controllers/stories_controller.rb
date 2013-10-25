class StoriesController < ApplicationController

  def index
    @stories = Story.all.order('position DESC')
  end



  def new
    @story = Story.new
  end


  def create
    # p story_params
    @story = Story.new(story_params)

    if @story.save
      flash[:success] = 'New story created.'
      redirect_to stories_path
    else
      flash[:error] = 'Story could not be created.'
      render 'new'
    end
  end


  def edit
    @story = Story.find(params[:id])
  end


  def update
    @story = Story.find(params[:id])
    if @story.update_attributes(story_params)
      flash[:success] = 'Story saved'
      redirect_to stories_path
    else
      flash[:error] = 'Story could not be saved.'
      render 'edit'
    end
  end

  def sort
    params[:story].reverse.each_with_index do |id, index|
      Story.where(id: id).update_all position: index+1
    end
    render nothing: true
  end


  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    flash[:success] = 'Story was deleted.'
    redirect_to stories_path
  end


  private

  def story_params
    params.required(:story).permit(:title, :in_order_to, :as_a, :i_want_to, :value, :complexity)
  end
end
