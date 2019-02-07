require 'capybara/dsl'
class BbcSignIn_page
  attr_accessor :error1, :error2
  include Capybara::DSL

  # Page Objects
  USERNAME_TITLE_ID = 'user-identifier-input'.freeze
  USERNAME_ID = 'form-message-username'.freeze
  PASSWORD_ID = 'password-input'.freeze
  SUBMIT_ID = 'submit-button'.freeze
  ERROR_MESSAGE_ID1 = 'form-message-username'.freeze
  ERROR_MESSAGE_PW_ID = 'form-message-password'.freeze
  ERROR_MESSAGE_ID2 = 'form-message-general'.freeze

  def initialize
    @error1 = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
    @error2 = 'Sorry, that password is too short. It needs to be eight characters or more.'
    @error3 = `Sorry, those details don't match. Check you've typed them correctly.`
  end
  
  def name(name)
    fill_in(USERNAME_TITLE_ID, with: name)
  end

  def password(password)
    fill_in(PASSWORD_ID, with: password)
  end

  def login
    click_button(SUBMIT_ID)
  end

  def error_message1
    find(:id, ERROR_MESSAGE_ID1).text
  end

  def error_message2
    find(:id, ERROR_MESSAGE_PW_ID).text
  end
end
