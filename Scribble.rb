
class Scribble
 def initialize
   @my_scribble = {
        1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
        2 => ["D", "G"], 3 => ["B", "C", "M", "P"], 4 => ["F", "H", "V", "W", "Y"],
        5 => ["K"], 8 => ["J", "X "], 10 => ["Q", "Z"]
        }
 end

  def score(hello)
    sum = 0
      hello.upcase.split("").each do |letter| #letter element is the varible inputted, to each of these letter as we know it is a string split in to its element
        @my_scribble.each do |key, value|
          if value.include?(letter)
            sum = sum + key
          end
        end
    end
  sum
  end
end

test = Scribble.new
test.score("Dad")
