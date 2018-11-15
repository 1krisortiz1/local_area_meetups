module Persistable

    def save #instance method
      self.class.all << self
    end


    def count #class method
      self.all.size
    end
  end
end
