require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  # Page Objects
  HOMEPAGE_URL = 'https://www.bbc.co.uk'.freeze
  CLICK_LINK = 'idcta-link'.freeze
 
  def visit_homepage
    visit(HOMEPAGE_URL)
  end

   def visit_signIn
    find(:id, CLICK_LINK).click
  end

end
