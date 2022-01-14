class Report

  def initialize
    @greens = 0
    @ambers = 0
    @reds = 0
    @uncounted = 0
    @summary = []
  end

  def generate_report(results)
    array_results = results.split(",").map { |number| number.to_i}
    array_results.each do |result|
      if result.between?(74, 100)
        @greens += 1
      elsif result.between?(49, 74)
        @ambers += 1
      elsif result < 50
        @reds += 1
      else
        @uncounted += 1
      end
    end
    evaluate_greens
    evaluate_ambers
    evaluate_reds
    evaluate_uncounted
    @summary.join("\n")
  end

  private 

  def evaluate_greens
    @summary << "Green: #{@greens}" if @greens >= 1
  end

  def evaluate_ambers
    @summary << "Amber: #{@ambers}" if @ambers >= 1 
  end 

  def evaluate_reds
    @summary << "Red: #{@reds}" if @reds >= 1
  end

  def evaluate_uncounted 
    @summary << "Uncounted: #{@uncounted}" if @uncounted >= 1
  end
end
