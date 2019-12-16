module Memorable

  module ClassMethods
    def reset_all
        all.clear 
    end #reset_all

    def count
        all.count
    end #count
  end #ClassMethods

  module InstanceMethods
    def initialize
      self.class.all << self
    end #init
  end #InstanceMethods
end #module 