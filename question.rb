require './players'
class Question

  def generate(name)
    num1=rand(1..10)
    num2=rand(1..10)
    puts "#{name}: What does #{num1} plus #{num2} equal?"
    correct = num1 + num2
    return correct
  end  

  
  def verify(user, correct, name)
    
    if (user == correct)
      puts "#{name}: Yes! You are Correct"
    else
      puts "#{name}: Seriously? No!"
      lives_lose
    end  
  end


end