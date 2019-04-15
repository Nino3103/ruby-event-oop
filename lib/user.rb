require 'pry'

class User


  attr_accessor :email
  attr_accessor:age
  @@array = []

  def self.all
    return @@array
  end

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@array << [@email, @age]
    puts "Bienvenue #{@email}, tu as #{@age} et tu viens de t'inscrire ;)"

  end

  def self.find_by_email(email)
    @@array.each {|element| if element[0] == email then puts "Voici l'âge du user cherché : #{element[1]}ans " end  }

  end

#user : #{element[0]} age : #{element[1]}"
end


binding.pry
puts "end of the file"
