class PokemonsController < ApplicationController

  def capture
  @pokemon = Pokemon.find(params[:id])
  @pokemon.trainer_id = current_trainer.id
  if @pokemon.save
    redirect_to root_path
  end
  end

  def damage
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update_column(:health, @pokemon.health - 10)
  if @pokemon.health <= 0
    @pokemon.destroy
  end
  redirect_to trainer_path(id: current_trainer)
  end

  def new 
  	@trainer = current_trainer
  	@pokemon = @trainer.pokemons.build
  end

  def create
  	@trainer = current_trainer
  	@pokemon = @trainer.pokemons.build pokemon_params
  	if @pokemon.save
  		redirect_to trainer_path(id: current_trainer)
  	else
  		render "new"
  		flash[:error] = @pokemon.errors.full_messages.to_sentence
  	end
  end
  
  private 
  def pokemon_params
  	params.require(:pokemon).permit(:name)
  end

end
