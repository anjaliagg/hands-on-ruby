anjali=-4
message= if anjali>0
  "Shutup"
else "come on!"
end

puts message

class Spaceship
  @@thruster_count=2
  def self.thruster_count
    @@thruster_count
  end
end

class SpritelySpaceship < Spaceship
  @@thruster_count=4
end

class AnotherSpaceship < Spaceship
  @@thruster_count=1
end

puts Spaceship.thruster_count

puts 3||b=a
puts b
puts false||a=10
puts a
