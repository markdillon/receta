class RecipesController < ApplicationController
  def index
    @recipes = if params[:keywords]
      r = Recipe.where('name ilike ?',"%#{params[:keywords]}%"'')
      # logger.error("RECIPES: #{r.inspect}")
      # return r
    else
      []
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
