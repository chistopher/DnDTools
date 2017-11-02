class QuestsController < ApplicationController

  def index
    @quests = Quest.all
  end

  def show
    @quest = Quest.find(params[:id])
  end

  def new
    @quest = Quest.new()
    2.times { @quest.npcs.build }
  end

  def edit
    @quest = Quest.find(params[:id])
    @quest.npcs.build
  end

  def create
    @quest = Quest.new(quest_params)
    npc = Npc.find_by(id: params[:quest][:npc_id])
    @quest.npcs << npc unless !npc

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
      params.require(:quest).permit(:name, :description, :discovered, npcs_attributes: [:id])
    end
end
