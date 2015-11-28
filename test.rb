require 'csv'
class Test
# Test class will calculate the price of placed order from the same restaurant id
  	def Test.ana_method()
		puts "Ente first string"
		a = gets.chomp
		puts "Ente second string"
		b = gets.chomp
		string_a = a.split(//)
		string_b = b.split(//)
		if(Test.are_anagrams(string_a,string_b))
			puts " Given strings are are_anagrams"
		else
			puts " Given strings are  not are_anagrams"
		end 
	end

	# function to find the matching order from same restaurant
	def self.are_anagrams(string_a, string_b)
		first_string= []
		second_string = []
		i =0
		index =0
		until(string_a[i].nil?)
			index = string_a[i].ord - "a".ord
			first_string[index] =  (first_string[index]) ? first_string[index] : 0  +1
	      	i= i+1
		end
		i =0
		until(string_b[i].nil?)
			index = string_b[i].ord - "a".ord
			second_string[index] = (second_string[index]) ? second_string[index] : 0 +1
	      	i= i+1
		end
		c=0
		until (c == 26)
			if(first_string[c]!= second_string[c])
				return false 
			end
			c = c +1
		end
		return true
	end
end

Test.ana_method()
