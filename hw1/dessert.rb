class Dessert
  def initialize(name, calories)
    # YOUR CODE HERE
    @name = name
    @calories = calories
  end

  def name
    @name
  end

  def name=(newName)
    @name = newName
  end

  def calories
    @calories
  end

  def calories=(newCalories)
    @calories = newCalories
  end

  def healthy?
    # YOUR CODE HERE
    return @calories < 200
  end

  def delicious?
    # YOUR CODE HERE
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
    super(name, calories)
    @flavor = flavor
  end

  def flavor
    @flavor
  end

  def flavor=(newFlavor)
    @flavor = newFlavor
  end

  def delicious?
    # YOUR CODE HERE
    if @flavor.downcase == "black licorice"
      return false
    else
      return true
    end
  end
end