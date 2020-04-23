def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  daily_min_temps = []
  outer_count = 0
  while outer_count < src.count do
    inner_1_count = 0
    daily_min = src[outer_count][0]
    while inner_1_count < src[outer_count].count do
      if src[outer_count][inner_1_count] < daily_min
        daily_min = src[outer_count][inner_1_count]
      end
      inner_1_count += 1
    end
    daily_min_temps << daily_min
    outer_count += 1
  end
  daily_min_temps
end