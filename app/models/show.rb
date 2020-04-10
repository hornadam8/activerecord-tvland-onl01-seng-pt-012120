class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    list =[]
    self.characters.map{|c| list << "#{c.full_name}"}
    list
  end
end