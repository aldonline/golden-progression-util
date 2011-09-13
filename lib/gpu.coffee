GOLDEN_RATIO = ( 1 + Math.sqrt 5 ) / 2

next_arc = ( arc ) -> switch arc
  when 234 then 341
  when 341 then 412
  when 412 then 123
  when 123 then 234

  when 143 then 432
  when 432 then 321
  when 321 then 214
  when 214 then 143

next_square = ( arc, left, top, side ) ->
  right = left + side
  bottom = top + side
  next_side = side / GOLDEN_RATIO
  [ next_left, next_top ] = switch arc
    when 234 then [ left - next_side , bottom - next_side ]
    when 341 then [ left, top - next_side ]
    when 412 then [ right, top ]
    when 123 then [ right - next_side, bottom ]
    
    when 143 then [ right, bottom - next_side ]
    when 432 then [ right - next_side, top - next_side  ]
    when 321 then [ left - next_side, top ]
    when 214 then [ left, bottom - next_side ]
  [ next_left, next_top, next_side ]

exports.GOLDEN_RATIO = GOLDEN_RATIO
exports.next_arc = next_arc
exports.next_square = next_square
