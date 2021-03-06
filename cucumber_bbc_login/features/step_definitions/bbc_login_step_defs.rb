Given('I access the bbc login page') do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.visit_signin
end

Given('I input incorrect username details') do
  @bbc_site.bbc_signin_page.name('joisadijo@oji.com')
end

Given('I input incorrect password details') do
  @bbc_site.bbc_signin_page.password('pasd334l')
end

When('I try to login') do
  @bbc_site.bbc_signin_page.login
end

Then('I recieve an error for not finding the account') do
  expect(@bbc_site.bbc_signin_page.error_message1).to eq @bbc_site.bbc_signin_page.error1
end

Given('I input incorrect short password details') do
  @bbc_site.bbc_signin_page.password('asdasd1')
end

Then('I recieve an error for having a short password') do
  expect(@bbc_site.bbc_signin_page.error_message2).to eq @bbc_site.bbc_signin_page.error2
end

Given('I input incorrect letter only password details') do
  @bbc_site.bbc_signin_page.password('ojiijooji')
end

Then('I recieve an error for having an all letter password') do
  expect(@bbc_site.bbc_signin_page.error_message2).to eq @bbc_site.bbc_signin_page.error3
end

Given('I input incorrect password only password details') do
  @bbc_site.bbc_signin_page.password('89071239123')
end

Then('I recieve an error for having an all number password') do
  expect(@bbc_site.bbc_signin_page.error_message2).to eq @bbc_site.bbc_signin_page.error4
end

Given('I input a long incorrect password details') do
  @bbc_site.bbc_signin_page.password('pafoghiauspuhfpiusadfhuipadshfuidspuihfadshiufhpuasdfhiusdahpfiusdphufhipudasfiuhpasd')
end

Then('I recieve an error for having a long incorrect password') do
  expect(@bbc_site.bbc_signin_page.error_message2).to eq @bbc_site.bbc_signin_page.error5
end
