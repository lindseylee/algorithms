require 'rubygems'
require 'pry-byebug'

module ArrayUtil
    def self.max(array)
      if array.size == 0
        return nil
      end
      
      max = array.first
      array.each do |x|
        if x > max
          max = x
        end
      end
      max 
    
    end

    def self.middle_element(array)
      if array.size == 0
        nil
      elsif array.size % 2 == 0
        (array[array.size / 2]) + array[(array.size/2) -1].to_f / 2
      else
        array[array.size/ 2]
      end
    end

    def self.sum_arrays(array1, array2)
      res = []
      array1.size.times do |index|
        res << (array1[index] + array2[index])
      end
      res
    end
end
