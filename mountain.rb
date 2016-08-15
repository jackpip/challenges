class Mountain

  attr_accessor :name, :height, :location

  def initialize(name, height, location)
    @name = name
    @height = height
    @location = location
  end

end

mountain = Mountain.new("Everest", 29029, "Asia")
puts mountain.name
puts mountain.height
puts mountain.location