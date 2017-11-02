class NpcsController < ApplicationController

  def index
    @npcs = Npc.all
  end

  def show
    @npc = Npc.find(params[:id])
    requireAuth(@npc)
  end

  def new
    @npc = Npc.new()
  end

  def edit
    @npc = Npc.find(params[:id])
    requireAuth(@npc)
  end

  def create
    @npc = Npc.new(npc_params)

    if @npc.save
      redirect_to @npc
    else
      render 'new'
    end
  end

  def update
    @Npc = Npc.find(params[:id])
    requireAuth(@npc)

    if @Npc.update(npc_params)
      redirect_to @Npc
    else
      render 'edit'
    end
  end

  def destroy
    @Npc  = Npc.find(params[:id])
    requireAuth(@npc)

    @Npc.destroy
    redirect_to npcs_path
  end

  private
    def npc_params
      params.require(:npc).permit(:name, :description, :discovered)
    end
end
