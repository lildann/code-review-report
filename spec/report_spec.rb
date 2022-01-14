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

  it "should evaluate a Red grade" do
    expect(report.generate_report("40")).to eq("Red: 1")
  end

  it "should evaluates several scores of different grades" do
    expect(report.generate_report("1,10,45,60,80,100")).to eq("Green: 2\nAmber: 1\nRed: 3")
  end

  it "should register uncounted grades" do
    expect(report.generate_report("1,10,45,60,80,100,150")).to eq("Green: 2\nAmber: 1\nRed: 3\nUncounted: 1")
  end
end