# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0] #capacity
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    raise "bad things" if @size == @storage.length
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    @storage[@size] = 0
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
    return false
  end

  def size
    return @size
  end

  def max
    @size.times do |i|
      if i == 0
        max = @storage[0]
      else
        if @storage[i] > max
          max = @storage[i]
        end
      end
    end
  end

  def max
    raise "bad things" if @size = 0
    max = @storage[0]
    @size.times do |i|
      if @storage[i] > max
        max = @storage[i]
      end
    end
  end

  def to_s
    str = ""
    @size.length.times do |i|
      str += "#{@storage[i]}, "
    end
    return "[#{[str[0..-3]]}]"
  end
end
