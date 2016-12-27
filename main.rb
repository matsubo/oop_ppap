#
# "PPAP (Pen-Pineapple-Apple-Pen)"
#
require './ppap'

# P-P-A-P
class PPAP
  def sing
    i = Human.new

    # I have a pen, I have an apple
    i.have Pen.new
    i.have Apple.new
    #
    # Uh! Apple-Pen!
    apple_pen = i.combine

    # I have a pen, I have pineapple
    i.have Pen.new
    i.have Pineapple.new

    # Uh! Pineapple-Pen!
    pineapple_pen = i.combine

    # Apple-Pen, Pineapple-Pen
    # Uh! Pen-Pineapple-Apple-Pen
    i.have apple_pen
    i.have pineapple_pen
    pen_pineapple_apple_pen = i.combine

    # Pen-Pineapple-Apple-Pen
    pen_pineapple_apple_pen

  end
end

