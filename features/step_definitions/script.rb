Given("script loaded") do
  visit "/vagrant/script.html"
end

Then("list is accessible") do
  puts page.evaluate_script("window.log")
end
