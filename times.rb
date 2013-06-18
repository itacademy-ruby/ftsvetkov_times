# encoding: utf-8
require 'ruby-debug'

class Numeric
  def super_times
    if self.is_a? Integer
      #debugger
      x = 0

      while x < self
        yield x

        x += 1
      end
    elsif self.is_a? Float
      #debugger
      x = 0

      rounded_value = self.round

      while x < rounded_value
        yield x

        x += 1
      end
    elsif self.is_a? Complex
      #debugger
      x = 0

      float_value = self.to_f
      rounded_value = float_value.round

      while x < rounded_value
        yield x

        x += 1
      end
    else
      raise TypeError("Unsupported type!")
    end
  end
end

#debugger
puts "\nInteger test:"
5.super_times { |x| print "#{x + 1} " }
puts "\nFloat test:"
(1.4).super_times { |x| print "#{x + 1} " }
puts "\nFloat test №2:"
(3.5).super_times { |x| print "#{x + 1} " }
puts "\nComplex test:"
(2.4).to_c.super_times { |x| print "#{x + 1} " }
puts "\nComplex test №2:"
(3.5).to_c.super_times { |x| print "#{x + 1} " }