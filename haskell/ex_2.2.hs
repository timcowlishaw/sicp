data Point = Point Rational Rational
            deriving(Show)
data Segment = Segment Point Point
              deriving(Show)

start_segment :: Segment -> Point
start_segment (Segment s _) = s

end_segment :: Segment -> Point
end_segment (Segment _ s) = s

x_point :: Point -> Rational
x_point (Point x _) = x

y_point :: Point -> Rational
y_point (Point _ y) = y

midpoint_segment :: Segment -> Point
midpoint_segment (Segment (Point start_x start_y) (Point end_x end_y)) = Point ((start_x + end_x) / 2) ((start_y + end_y) / 2)

main = do
  print (midpoint_segment (Segment (Point 0 0 ) (Point 4 3)))