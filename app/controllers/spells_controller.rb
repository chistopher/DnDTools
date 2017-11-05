class SpellsController < ApplicationController

  def index
    @spells = Spell.all
    puts @spells.empty?
  end

  def show
    @spell = Spell.find(params[:id])
  end

end
