class Human

  def initialize
    @belongings = []
  end

  def have(object)
    @belongings << object
  end

  def combine
    output = nil
    if @belongings.count == 2
      if @belongings.any? {|o| o.class == Pen }
        if @belongings.any? {|o| o.class == Apple } 
          output = ApplePen.new(@belongings)
        elsif @belongings.any? {|o| o.class == Pineapple }
          output = PineapplePen.new(@belongings)
        end
      elsif @belongings.any? {|o| o.class == PineapplePen } && @belongings.any? {|o| o.class == ApplePen }
        output =  PenPinappleApplePen.new(@belongings)
      end

      if output
        @belongings = []
        return output
      end

    end
  end

end

class Pen; end
class Apple; end
class Pineapple; end

class Compound
  attr_reader :objects
  def initialize(objects)
    @objects = objects
  end
end

class ApplePen < Compound; end
class PineapplePen < Compound; end
class PenPinappleApplePen < Compound; end


