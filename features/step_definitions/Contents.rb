path = "drivers/chromedriver.exe"
Given(/^I open a browser\.$/) do
  @browser = Selenium::WebDriver.for :chrome, driver_path:path
end

When(/^I navigate to www\.flvto\.biz$/) do
  url = "https://www.flvto.biz"
  @browser.navigate.to url
end

Then(/^I see 'Terms of Use' link$/) do
  @browser.find_element(xpath: "//a[@href='/terms/']")
end

And(/^I see 'How to' link$/) do
  @browser.find_element(xpath: "//a[@href='/how-to/']")
end

And(/^I see 'Privacy Policy' link$/) do
  @browser.find_element(xpath: "//a[@href='/policy/']")
end

And(/^I see 'DMCA' link$/) do
  @browser.find_element(xpath: "//a[@href='/dmca/']")
end

And(/^I see 'Feedback' link$/) do
  @browser.find_element(xpath: "//a[@href='/feedback/']")
end

And(/^I see 'Download' button$/) do
  @browser.find_element(xpath: "//div[@class='converter-button-text-wrapper']")
end