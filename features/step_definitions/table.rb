Given("table loaded") do
  visit "table.html"
end

Then("should see these cukes:") do  |expected|
  actual = tableArray(page.all('table tr'))
  expected.diff!(actual)
end

# collect the given capybara result to array of arrays
# kind of crude for now
# needs to handle thead, perhaps
# is there an existing library?
def tableArray(result)
  table = Array.new
  result.each do |ele|
    row = Array.new
    ele.all('td').each do |td|
      row << td.text
    end
    table << row
  end
  table
end