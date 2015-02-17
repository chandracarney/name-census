class CensusesController < ApplicationController
  def index
    @names = Census.all
  end
end
