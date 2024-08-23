def mySqrt(x: int) -> int:
    if x < 2:
        return x

    left, right = 0, x

    while left <= right:
        mid = (left + right) // 2
       # print(mid)
        mid_squared = mid * mid

        if mid_squared == x:
            return mid
        elif mid_squared < x:
            left = mid + 1
            print(left)
        else:
            right = mid - 1
          #  print(right)

    return right


# Example 1
#print(mySqrt(4))  # Output: 2

# Example 2
print(mySqrt(8))  # Output: 2
