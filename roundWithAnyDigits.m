function result = roundWithAnyDigits(object, digit)
    result = round(object * 10 ^ digit) * 10 ^ -digit;
end
