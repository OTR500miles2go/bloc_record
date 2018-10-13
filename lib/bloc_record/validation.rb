module Validation

  def validate_input(values) 
    if values.length == 4
      if (/\A[a-zA-Z\s]*\z/.match("#{values[1].gsub(/[']/, '')}")) &&
         (/\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/.match("#{values[2].gsub(/[']/, '')}")) &&
         (/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i.match("#{values[3].gsub(/[']/, '')}"))
        return true
      end 
    else
      return true
    end  
  end
end