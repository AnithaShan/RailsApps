require 'Time'
class Time
# Test class will calculate the price of placed order from the same restaurant id
  	def Time.ana_method()
		puts "Ente first string"
		a = [
    {
        start: "2015-11-01T10:00:00.00+08:00",
        end: "2015-11-01T11:00:00.00+08:00"
    },
    {
        start: "2015-11-01T11:00:00.00+08:00",
        end: "2015-11-01T12:00:00.00+08:00"
    },
    {
        start: "2015-11-01T12:00:00.00+08:00",
        end: "2015-11-01T13:00:00.00+08:00"
    },
    {
        start: "2015-11-01T13:00:00.00+08:00",
        end: "2015-11-01T14:00:00.00+08:00"
    }
]
		puts "Ente second string"
		b = [
    {
        start: "2015-11-01T12:00:00.00+08:00",
        end: "2015-11-01T13:00:00.00+08:00"
    },
    {
        start: "2015-11-01T13:00:00.00+08:00",
        end: "2015-11-01T14:00:00.00+08:00"
    },
    {
        start: "2015-11-01T14:00:00.00+08:00",
        end: "2015-11-01T15:00:00.00+08:00"
    },
    {
        start: "2015-11-01T15:00:00.00+08:00",
        end: "2015-11-01T16:00:00.00+08:00"
    }
]
		unsorted_array =  (a & b)  + (a - b) + (b -a)
		puts Time.sorted(unsorted_array)
	end

	def self.sorted(unsorted_array)
	  return unsorted_array if unsorted_array.length <= 1
	  for i in 0..unsorted_array.size 
  		for j in i+1..unsorted_array.size-1    
    		unsorted_array[i], unsorted_array[j] = unsorted_array[j], unsorted_array[i] if(Time.parse(unsorted_array[i][:start]) > Time.parse(unsorted_array[j][:start]))
  		end
		end
		 unsorted_array
	end
end

Time.ana_method()