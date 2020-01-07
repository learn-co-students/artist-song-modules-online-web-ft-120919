module Memorable
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
class Song
  extend Memorable
  include Memorable::InstanceMethods
end
class Artist
  extend Memorable
  include Memorable::InstanceMethods
end
