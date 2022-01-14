require "report"

describe Report do
  let(:report) { Report.new }

  it "should evaluate a Green grade" do
    expect(report.generate_report("100")).to eq("Green: 1")
  end

  it "should eveluate two Green grades" do
    expect(report.generate_report("100, 75")).to eq("Green: 2")
  end

end