class DiseasesController < ApplicationController
  def index
    @disease = Disease.new
  end

  def new
  end
end
