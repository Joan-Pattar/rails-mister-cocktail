class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(params([:dose, :cocktail_id]))
raise

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
    raise
  end

  def destroy
  end
end
