
class Question

# Generates a random math question and also returns correct answer for verification   
  def generate(name)
    num1=rand(1..10)
    num2=rand(1..10)
    puts "#{name}: What does #{num1} plus #{num2} equal?"
    correct = num1 + num2
    return correct
  end  

end