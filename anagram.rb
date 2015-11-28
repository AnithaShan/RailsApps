class Anagram

	def Anagram.ana_method()
		puts "Ente first string"
		a = gets.chomp
		puts "Ente second string"
		b = gets.chomp
		string_a = a.split(//)
		string_b = b.split(//)
		if(Anagram.are_anagrams?(a,b))
			puts " Given strings are are_anagrams"
		else
			puts " Given strings are  not are_anagrams"
		end 
	end

	def selfare_anagrams?(string_a, string_b)
		i =0
		until(string_a == " ")
			first_string[string_a[i].ord -"a".ord]= first_string[string_a[i].ord -"a".ord] +1
	      	i= i+1
		end
		i =0
		until(string_b == " ")
			second_string[string_b[i].ord -"a".ord] = second_string[string_b[i].ord -"a".ord] +1
	      	i= i+1
		end
		c=0
		until (c == 26)
			return false if(first_string[c]!= second_string[c])
			c++
		end
		return true
	end
end

Anagram.ana_method()