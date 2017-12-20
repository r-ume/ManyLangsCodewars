# Zodiac Sign

# Your task is to get Zodiac Sign using input day and month.

# For exapmle:
# get_zodiac_sign(1,5) => 'Taurus'
# get_zodiac_sign(10,10) => 'Libra'
# Correct answers are (preloaded):
#
# SIGNS = ['Capricorn', 'Aquarius', 'Pisces', 'Aries', 'Taurus', 'Gemini', 'Cancer', 'Leo', 'Virgo', 'Libra', 'Scorpio', 'Sagittarius']
# P.S. Each argument is correct integer number.
#
# The dates details here https://www.izodiacsigns.com/ (the solution is based on 2017 year )

# Best Answer
SIGNS       = ['Capricorn', 'Aquarius', 'Pisces', 'Aries', 'Taurus', 'Gemini', 'Cancer', 'Leo', 'Virgo', 'Libra', 'Scorpio', 'Sagittarius']
CUTOFFS     = [19, 18, 20, 19, 20, 20, 22, 22, 22, 22, 21, 21]
zodiac_sign = proc { |day, month| day > CUTOFFS[month - 1] ? SIGNS[month] : SIGNS[month - 1] }

p zodiac_sign.call(6, 9)
