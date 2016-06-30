class Calculator
  def self.add(input)
    if input.empty?
      0
    else
      sum = input.split(',').map { |number| number.to_i }
      sum.inject(0) { |sum, number| sum + number }
    end
  end
  def self.substract(input)
    if input.empty?
      0
    else
      subst = input.split(',').map { |number| number.to_i}
      subst.inject(0) { |number, subst| -number - (subst) }
      end
    end
end
