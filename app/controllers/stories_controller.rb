class StoriesController < ApplicationController
  def index
    @stories = Story.all
    render :index
  end

  def show
    @story = Story.find(params[:id])
    render :show
  end

  def new
    @story = Story.new
    render :new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      flash[:notice] = 'Story successfully added!'
      redirect_to stories_path
    else
      render :new
    end
  end

  def edit
    @story = Story.find(params[:id])
    render :edit
  end

  def update
    @story = Story.find(params[:id])
    if @story.update(story_params)
      flash[:notice] = 'Story successfully updated!'
      redirect_to stories_path
    else
      render :edit
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path
  end

  private

  def story_params
    params.require(:story).permit(:title, :intro, :image)
  end
end
