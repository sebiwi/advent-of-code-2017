class Captcha
  def self.solve input
    result = 0
    array = input.to_s.split('')
    array.each_cons(2) do |a, b|
      result += a.to_i if a == b
    end
    result += array.last.to_i if array.last == array.first
    result
  end

  def self.solve2 input
    result = 0
    elements = input.chars.map(&:to_i)
    half_size =  elements.size/2
    elements.each_with_index do |element, index|
      result += element if element == elements[index + half_size]
      break if index >= half_size
    end
    result * 2
  end
end
