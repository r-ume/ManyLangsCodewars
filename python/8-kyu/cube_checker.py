# Find out whether the shape is a cube

# To find the volume (centimeters cubed) of a cuboid you use the formula:

# volume = Length * Width * Height

# But someone forgot to use proper record keeping, so we only have the volume, and the length of a single side!

# It's up to you to find out whether the cuboid has equal sides (= is a cube).

# Return true if the cuboid could have equal sides, return false otherwise.

# Return false for invalid numbers too (e.g volume or side is less than or equal to 0).

# Note: the sides must be integers


# My Answer
def cube_checker(volume, side):
    if volume <= 0 or side <= 0:
        return False

    return side ** 3 == volume

# Best Answer
def best_cube_checker(volume, side):
    return 0 < volume == side**3

second_best_cube_checker = lambda v,a:  (a**3 == v) and a > 0 and v > 0
