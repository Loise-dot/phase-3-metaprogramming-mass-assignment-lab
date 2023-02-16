class Person

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=" ,value)
    end
  end
end

bob_attributes = {name: "Bob", height: 100}
bob = Person.new(bob_attributes)
puts bob.name
puts bob.height

susan_attributes = {name: "Susan", eye_color: "red", height: 50}
susan = Person.new(susan_attributes)
puts susan.name
puts susan.eye_color
puts susan.height