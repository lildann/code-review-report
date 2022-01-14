require "report"

describe Report do
  let(:report) { Report.new }

  it "should evaluate a Green grade" do
    expect(report.generate_report("100")).to eq("Green: 1")
  end

  it "should evaluate two Green grades" do
    expect(report.generate_report("100, 75")).to eq("Green: 2")
  end

  it "should evaluate an Amber grade" do
    expect(report.generate_report("73")).to eq("Amber: 1")
  end


end