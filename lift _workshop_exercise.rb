Ruby

Lift start at floor 0
User asked for number
User input/enter number
If user enter positive number lift goes up by that number
If user enter negative number goes down by that number
Lift user enter ‘stop’
Print current floor number

def lift ()
    currentfloor = 0
end

puts "Please enter any number this can be negative"

liftnumber = gets.chomp
store_number = {liftnumber}


  if store_number != "stop"
      final_floor = store_number + currentfloor
    puts "Please enter"
  else store_number == "stop"
   puts currentfloor
  end



if name != "stop"
  store_name  << name
  puts "give me another name"
else name == "stop"
 puts #{store_name}
end


Max O'Sullivan 12:07 PM
def lift()
  currentfloor = 0 - This keeps a live version of the floor
  movement = 0 - this is to make is exsit to set it as something

  #until -to repeat intil a certain condition is met

 until movement == "stop" do
    print "Please enter the number of floors you would like to move (can also be negative) "
    movement = gets.chomp
    if movement != "stop"
      movement = movement.to_i

#ruby store things as strings so the conversion to the number is necessary due to stop, but to add to the current floor.
      currentfloor = currentfloor + movement
    end
 end
  puts currentfloor
end
lift()
