class Actor < ActiveRecord::Base
  has_many :shows
  has_many :characters, through: :shows
  
  def full_name
    fn = "#{self.first_name} #{self.last_name}"
    fn
  end
  
  def list_roles
    roles = []
    self.characters.map{|c| roles << 'c.name - c.shows.name'}
    roles
  end
end