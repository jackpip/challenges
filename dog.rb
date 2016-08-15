class Dog
  def command(name_of_command)
    if self.respond_to?(name_of_command)
      self.send(name_of_command)
    else
      puts "huh?"
    end
  end

  def bark
    puts "bow wow"
  end
  
end

d = Dog.new
d.command("bark")
d.command("pay bills")