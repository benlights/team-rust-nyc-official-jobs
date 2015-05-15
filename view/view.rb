class View
  attr_reader :jobs
  def self.welcome
    puts "Welcome to our program, created by Team Rust. Now, let's shake off some of the Rust and get searching for some jobs!"
    sleep 1.5
    puts "What type of job would you like to search for?"
    View.input
  end

  def self.input
    job = gets.chomp
  end

  def self.display(job)
    puts job
  end
end

View.welcome