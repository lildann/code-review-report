require "report"

describe Report do
  
  it "should evaluate a Green grade" do
    report = Report.new
    expect(report.generate_report("100")).to eq("Green: 1")
  end

end