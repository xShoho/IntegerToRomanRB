class IntegerToRoman
    def toRoman(num)
        if num > 3999
            raise StandardError.new "Given num is too large #{ num }, expected lower than 4000"
        end

        if num < 1
            raise StandardError.new "Given num is too small #{ num }, expected higher than 0"
        end

        symbol = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
        value = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        result = ""


        while num != 0
            for i in (0..symbol.length - 1)
                if num >= value[i]
                    result += symbol[i]
                    num -= value[i]
                    break
                end
            end
        end

        return result
    end
end