class Greetings
  def initialize(name:)
    @name = name
  end

  def call
    "Welcome, #{name.upcase}"
  end

  private

  attr_reader :name
end
