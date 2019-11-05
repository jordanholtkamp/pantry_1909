class CookBook
  attr_reader :summary
  def initialize
    @summary = []
  end

  def add_recipe(recipe)
    hash = {
      :name => recipe.name,
      :details => {:ingredients => [{:ingredient => }]},
      :total_calories => recipe.total_calories
    }
    @summary << hash
  end
end