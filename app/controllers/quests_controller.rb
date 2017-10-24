class QuestsController < ApplicationController

  def index
    @quests = Quest.all
  end

  def show
    @quest = Quest.find(params[:id])
  end

  def new
    @quest = Quest.new()
  end

  def edit
    @quest = Quest.find(params[:id])
  end

  def create
    @quest = Quest.new(quest_params)

    if @quest.save
      redirect_to @quest
    else
      render 'new'
    end
  end

  def update
    @quest = Quest.find(params[:id])

    if @quest.update(quest_params)
      redirect_to @quest
    else
      puts @quest.errors.any?
      render 'edit'
    end
  end

  def destroy
    @quest  = Quest.find(params[:id])
    @quest.destroy

    redirect_to quests_path
  end

  private
    def quest_params
      params.require(:quest).permit(:title, :description)
    end
end
