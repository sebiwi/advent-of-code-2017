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
end
