class Greetings
  def initialize(name:)
    @name = name
  end

  def call
    return 'Welcome!!' if invalid_name?

    "Welcome, #{name.upcase}!"
  end

  private

  def invalid_name?
    name.nil? || name.empty?
  end

  attr_reader :name
end
