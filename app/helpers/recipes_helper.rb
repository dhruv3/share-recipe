module RecipesHelper
  def recipe_params
    params.require(:recipe).permit(:title, :body)
  end
end
