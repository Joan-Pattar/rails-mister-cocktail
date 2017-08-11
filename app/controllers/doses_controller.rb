class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    # @dose = Dose.new(params[:dose_params])
    # @dose.cocktail = @cocktail
    @dose = @cocktail.doses.new(dose_params)

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    @cocktail = @dose.cocktail_id
    redirect_to cocktail_path(@cocktail)
  end


  private

  def dose_params #strong params
  params.require(:dose).permit(:description, :ingredient_id, :photo)
  #on récupère le cocktail_id dans l'url!
end
end
