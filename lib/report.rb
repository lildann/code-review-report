class Report
  def generate_report(results)
    if results.to_i.between?(75, 100)
      return "Green: 1"
    end
  end
end