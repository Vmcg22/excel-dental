class AllergiesController < ApplicationController
  def index
  end

  def new
    @allergies = Allergy.new
  end
end
