require_relative "spec_helper"

class SiegeEngine < Unit
  attr_accessor :gold, :food, :lumber

  def initialize
    super(400, 50)
  end
end
