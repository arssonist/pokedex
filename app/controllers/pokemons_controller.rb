class PokemonsController < ApplicationController


  def index
    @pokemons = Pokemon.all

      respond_to do |format|
        format.html
        format.json
      end

  end


  def show
    @pokemon = Pokemon.find(params[:id])

    respond_to do |format|
      format.html { render @pokemon }
      format.json { render json: @pokemon }
    end

  end


  def create
    @pokemnon = Pokemon.new(pokemnon_params)

    if @pokemnon.save

    # use respond_to to give back data in a certain format that you have listed in the block
    respond_to do |format|
      format.html{ render @pokemnon }
      format.json { render json: @pokemnon }
    end

  else
    render :index
  end

  end



  def destroy
  end


end
