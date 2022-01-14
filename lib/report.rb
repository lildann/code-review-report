class Report

  def initialize
    @greens = 0
  end

  def generate_report(results)
    results_to_numbers(results)
    
    array_results = results.split(",").map { |number| number.to_i}
    array_results.each do |result|
      if result.between?(74, 100)
        @greens += 1
      end
    end
    return "Green: #{@greens}"
  end

  private 
  def results_to_numbers(results)
    array_results = results.split(",").map { |number| number.to_i}
  end

end