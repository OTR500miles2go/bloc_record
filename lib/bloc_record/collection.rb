module BlocRecord
  class Collection < Array

    def update_all(updates)
      ids = self.map(&:id)
      self.any? ? self.first.class.update(ids, updates) : false
    end

    def take(num=1)
      self.any? ? self[0..num-1] : false
 	  end

    def where(*args)
      self.any? ? self.first.where(args) : false
    end

    def not(*args)
      self.any? ? self.first.not(args) : false
    end

    def destroy_all
      if self.length > 0
        self.each do |entry|
          entry.destroy
        end
      else
        puts "There is no such entry to destroy."
      end
    end
  end
end