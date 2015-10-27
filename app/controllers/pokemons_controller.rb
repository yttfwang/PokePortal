class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end
  def create
    @pokemon = Pokemon.create pokemon_params
    @pokemon.trainer_id = current_trainer.id
    @pokemon.health = 100
    @pokemon.level = 1
    if @pokemon.save
      redirect_to trainer_path(current_trainer.id)
    else
      redirect_to pokemons_new_path
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end
  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
