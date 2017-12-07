class Checksum
  def self.solve input
    input.map(&:sort).map{ |a| a.last - a.first }.inject(0){ |a, b| a += b }
  end
  def self.solve2 input
    input.map(&:sort).inject(0){|acc, element| acc += element.combination(2).select { |e| e.last % e.first == 0 }.map{ |e| e.last / e.first }.first  }
  end
end
