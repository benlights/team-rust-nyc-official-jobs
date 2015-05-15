class View
  attr_reader :jobs
  def self.welcome
    puts "Welcome to our program, created by Team Rust. Now, let's shake off some of the Rust and get searching for some jobs!\nType 'quit' or 'exit' to leave your query interface!"

    sleep 0.5
    puts
  end

  def self.input
    gets.chomp.strip
  end

  def self.display(output)
    output
  end

  def self.msg_enter_search
    puts "Please enter a search term that describes the job you are looking for:"
  end

  def self.msg_invalid_id
    puts "That is not a valid ID number, please enter another."
    puts
  end

  def self.msg_list
    puts "Here is a list of ten jobs that match your search-term sorted by starting salary"
  end

  def self.msg_enter_id
    puts
    puts "Enter the ID number to see a detailed job description. Type 'next' to start a new search"
  end

   def self.wrap(s)
    s.gsub(/(\.{1})(\s+|\Z)/, "\\1\n")
  end

  def self.end_of_query
    puts "-----------------------------"
  end
end

