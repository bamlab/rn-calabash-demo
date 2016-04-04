Given(/^the app has launched$/) do
  wait_for do
    !query("*").empty?
  end
end

Then(/^I should see '(.*)'$/) do |expected_mark|
  until element_exists("view marked:'#{expected_mark}'") || element_exists("view text:'#{expected_mark}'")
    screenshot_and_raise "No element found with mark or text: #{expected_mark}"
  end
end
