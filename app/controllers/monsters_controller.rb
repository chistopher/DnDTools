class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def show
    @monster = Monster.find(params[:id])
    puts @monster.attributes
  end

end
