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
    @@array << self
    puts "Bienvenue #{@email}, tu as #{@age} et tu viens de t'inscrire ;)"

  end

  def self.find_by_email(email)
  @@array.each do |user|

    if user.email == email
      return user
    end

  end

  puts "aucun utilisateur n'a cet email"
  return false
end

#user : #{element[0]} age : #{element[1]}"
end


binding.pry
puts "end of the file"
