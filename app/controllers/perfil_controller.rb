class PerfilController < ApplicationController
  def index
  	@profiles = Profile.all
  end

  def show
  	@profile = Profile.find(params[:id])
  end

  def new
  	@profile = Profile.new
  end

  def create
  	@profile = Profile.new(perfil_params)
  	if @profile.save
  		redirect_to perfil_path(:id => @profile.id)
  	else
  		render :new
  	end
  end

  def edit
  	@profile = Profile.find(params[:id])
  end

  def update
  	@profile = Profile.find(params[:id])
  	if @profile.update(perfil_params)
  		redirect_to perfil_path(:id => @profile.id)
  	else
  		render :edit
  	end
  end

  def destroy
  	@profile = Profile.find(params[:id])
  	@profile.destroy
  	redirect_to perfil_index_path
  end

  private

  def perfil_params
  	params.require(:profile).permit(:name,:profession,:age)
  end
end
