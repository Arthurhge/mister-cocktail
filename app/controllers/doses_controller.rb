class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new()
  end

  def delete
  end

  private

  def dose_params
    params.require(:dose).permit(:name)
  end
end
