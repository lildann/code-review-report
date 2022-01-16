## Code Review 14.01.22

* School reports company - build report from a string with comma separated values
* Class -> Report
* Method -> generate_report(results)
* Green = 75..100
* Amber = 50..74
* Red = 0..49

INPUT | OUTPUT
------|--------
report.generate_report("100") | "Green: 1"
report.generate_report("100, 75") | "Green: 2"
report.generate_report("1,10,45,60,80,100") | "Green: 2\nAmber: 1\nRed: 3
report.generate_report("1,10,45,60,80,100,150") | "Green: 2\nAmber: 1\nRed: 3\nUncounted: 1"

* Edge cases: 4th category = "Uncounted: #{number}" - included in the output if there are such cases
