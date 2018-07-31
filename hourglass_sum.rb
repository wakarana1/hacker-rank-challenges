arr =
[[1, 1, 1, 0, 0, 0],
[0, 1, 0, 0, 0, 0],
[1, 1, 1, 0, 0, 0],
[0, 0, 2, 4, 4, 0],
[0, 0, 0, 2, 0, 0],
[0, 0, 1, 2, 4, 0]]

# [[-1, 1, -1, 0, 0, 0],
# [0, -1, 0, 0, 0, 0],
# [-1, -1, -1, 0, 0, 0],
# [0, -9, 2, -4, -4, 0],
# [-7, 0, 0, -2, 0, 0],
# [0, 0, -1, -2, -4, 0]]

def hourglassSum(arr)
  max_sum = -63
  max_corner = (arr.length - 3)

  (0..max_corner).each do |y|
    (0..max_corner).each do |x|
      top = (arr[y][x..(x + 2)]).inject(0,:+)
      middle = arr[y + 1][ x + 1]
      bottom = (arr[y + 2][x..(x + 2)]).inject(0,:+)
      hourglass = top + middle + bottom
      if hourglass > max_sum
        max_sum = hourglass
      end
    end
  end
  max_sum
end

p hourglassSum(arr)
