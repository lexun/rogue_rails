class StoriesController < ApplicationController

  def index

    @stories = Story.all

  end


  def new

    @story = Story.new

  end

  def create
    p story_params
    @story = Story.new(story_params)

    if @story.save
      flash[:success] = 'New story created.'
      redirect_to stories_path
    else
      flash[:error] = 'Story could not be created.'
      render 'new'
    end
  end


  private 

  def story_params
    params.required(:story).permit(:title, :in_order_to, :as_a, :i_want_to, :value, :complexity)
  end
end