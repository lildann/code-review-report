class Report

  def initialize
    @greens = 0
    @ambers = 0
  end

  def generate_report(results)
    results_to_numbers(results)

    array_results = results.split(",").map { |number| number.to_i}
    array_results.each do |result|
      if result.between?(74, 100)
        @greens += 1
      elsif result.between?(49, 74)
        @ambers += 1
      end
    end

    if @greens >= 1
      return "Green: #{@greens}"
    elsif @ambers >= 1 
      return "Amber: #{@ambers}"
    end
  end

  private 
  def results_to_numbers(results)
    array_results = results.split(",").map { |number| number.to_i}
  end

end