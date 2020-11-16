
puts "Enter your siret number"
SIRET_number = gets.chomp

def verify_siret siret_number
    siret_number = siret_number.split('')
    if siret_number.length >= 9
        sum = 0
        count = 0

        # excute th Luhn algorithm
        for i in siret_number do
            i = i.to_i
            if count % 2 != 0
                i *= 2
                if i > 9
                    i -= 9
                end
                sum += i
            else
                sum += i
            end
            count += 1
        end
        
        return sum % 10 == 0
    end
end

puts verify_siret(SIRET_number) ? "ok" : "not ok"
