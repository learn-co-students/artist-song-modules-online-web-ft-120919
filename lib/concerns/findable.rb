module Findable
 module ClassMethods
   def find_by_name(name)
     self.all.detect{|z| z.name}
   end
  end
end
