def sluggish_octopus(fishes)
  fishes.each_with_index do |fish1, i1|
    max_length = true

    fishes.each_with_index do |fish2, i2|
      next if i1 == i2
      max_length = false if fish2.length > fish1.length
    end

    return fish1 if max_length
  end
end


def dominant_octopus
  # sort the array longest to shortest
  prc = Proc.new { |x, y| y.length <=> x.length }
  #return the first element
  fishes.merge_sort(&prc)[0]
end

def clever_octopus
  #hold the biggest fish
biggest_fish = fishes.first

fishes.each do |fish|
  if fish.length > biggest_fish.length
    #update the biggest fish
    biggest_fish = fish
  end
end

biggest_fish
end

def slow_dance

end

def constant_dance
end
