module Findable 

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end
  # def all 
  #   all
  # end 
  
  def find_by_name(name)
    all.detect{|n| n.name == name}
  end
  
end