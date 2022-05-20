def caesar_cipher(string,number)

    encripted_stringInFunction = ""
    
    string.split("").each do |char|
        stringToAsciContainer = string[char]
        stringToAsciContainer = stringToAsciContainer.sum
        initialAsciNumber = stringToAsciContainer
        stringToAsciContainer = stringToAsciContainer + number
        #case if the ascii number falls below 64
        if stringToAsciContainer < 65
            stringToAsciContainer = 91 + number
            #case if the ascii number is bigger than 90 but its a Uppercase letter
        elsif stringToAsciContainer > 90 && initialAsciNumber.between?(65,90) == true
            stringToAsciContainer = 64 + number
            #case if the ascii number is smaller than 97 but its a lowercase letter
        elsif stringToAsciContainer < 97 && initialAsciNumber.between?(97,122) == true
            stringToAsciContainer = 123 + number
            #case if the ascii number is bigger than 122 but its a lowercase letter
        elsif stringToAsciContainer > 122 && initialAsciNumber.between?(97,122) == true
            stringToAsciContainer = 96 + number
        end
        encripted_stringInFunction = encripted_stringInFunction + stringToAsciContainer.chr
        
    end
        
        return encripted_stringInFunction
    
   
    
    

    
end
#example with a string with Z
encripted_string = caesar_cipher("Zello", 2);
puts encripted_string

