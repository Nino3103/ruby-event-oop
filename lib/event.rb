require 'pry'
require 'time'

class Event

  attr_accessor :start_date

  def initialize(title,start, duration,*attendees)

    @attendees = []
    @title = title
    @start_date = Time.parse(start)
    @duration = duration
    attendees.each do |attendees| @attendees << attendees end


  end


  def postpone_24h
    @start_date = @start_date + 3600*24
  end


  def end_date
    return @start_date + @duration*60
  end


  def is_past?
    my_time = Time.now
    @start_date < my_time ? "évènement passé !" : "évènement à venir..."
  end


  def is_futur?
    my_time = Time.now
    @start_date > my_time ? "évènement passé !" : "évènement à venir..."
  end


  def is_soon?
    my_time = Time.now
    my_time - @start_date <30 ? "évènement bientôt, bouge ton cul moins de 30 min!" : "évènement dans plus de 30 min tu peux prendre un café"
  end


  def to_s
    p ">Titre : #{@title}"
    p ">Date de début : #{@start_date}"
    p ">Durée :#{@duration} minutes"
    p ">Invités : " + @attendees.join(', ')
  end

binding.pry

end
