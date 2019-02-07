require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_signinpage'
# This is the super class, this holds an instance of all bbc pages
class BbcSite
  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_signin_page
    BbcSignIn_page.new
  end
end
