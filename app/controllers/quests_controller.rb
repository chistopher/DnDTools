class QuestsController < ApplicationController

  def index
    @quests = Quest.all
  end

  def new
  end

  def create
    @quest = Quest.new(quest_params)

    @quest.save
    redirect_to @quest
  end

  def show
    @quest = Quest.find(params[:id])
  end

  private
    def quest_params
      params.require(:quest).permit(:title, :description)
    end
end
