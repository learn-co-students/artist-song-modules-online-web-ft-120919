module Findable

  def find_by_name(name)
    all.detect{|item| item.name == name}
  end #find_by_name
  
end #module