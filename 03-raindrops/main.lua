--- Introduction
--- Raindrops is a slightly more complex version of the FizzBuzz challenge, a classic interview question.

--- Instructions
--- Your task is to convert a number into its corresponding raindrop sounds.

--- If a given number:
--- is divisible by 3, add "Pling" to the result.
--- is divisible by 5, add "Plang" to the result.
--- is divisible by 7, add "Plong" to the result.
--- is not divisible by 3, 5, or 7, the result should be the number as a string.

--- Examples
--- 28 is divisible by 7, but not 3 or 5, so the result would be "Plong".
--- 30 is divisible by 3 and 5, but not 7, so the result would be "PlingPlang".
--- 34 is not divisible by 3, 5, or 7, so the result would be "34".

return function(n)
    local result = ""
    if n % 3 == 0 then
        if n % 5 == 0 then
            if n % 7 == 0 then
                result = "PlingPlangPlong"
                return result
            else
                return "PlingPlang"
            end
        end
        if n % 7 == 0 then
            return "PlingPlong"
        end
        return "Pling"
    end
    if n % 5 == 0 then
        if n % 7 == 0 then
            return "PlangPlong"
        else
            return "Plang"
        end
        return "Plong"
    end
    if n % 7 == 0 then
        return "Plong"
    end
    return "" .. n
end
