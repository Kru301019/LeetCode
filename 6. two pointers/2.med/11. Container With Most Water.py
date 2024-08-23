def Container_With_Most_Water(height):
    right = len(height) - 1
    left = 0
    prevWeight = 0
    while left<=right:
    
        if height[left] < height[right]:
            position = right-left
            weight = position*height[left]
            if weight>prevWeight:
                prevWeight = weight
            left += 1
        
        else:
            position = right-left
            weight = position*height[right]
            if weight > prevWeight:
                prevWeight = weight
            right-=1
    return prevWeight

height = [1, 8, 6, 2, 5, 4, 8, 3, 7]
Container_With_Most_Water(height)
