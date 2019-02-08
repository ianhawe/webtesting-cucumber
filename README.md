# Web testing with cucumber and Gherkin syntax (Source: www.bbc.co.uk)

## Description
This is an automated tool used to check validation on the BBC sign in page. Cucumber is an open source specification execution tool(used for acceptance testing). Gherkin is the format for cucumber specification, it is used to bring technical and non technical people together through the medium of a mutually undersood language.

### How to use current tests o the bbc sign in webpage.
1. Type 'bundle' in the terminal
2. Type in 'cucumber' in the terminal
3. Watch the tests run

### Fields available to change:
1. Go to bbc_login_step_defs.rb
2. In here you can change the parameters of the methods for example:
   ```@bbc_site.bbc_signin_page.password('pasd334l')```
3. In here you would change the 'pasd334l'
4. All other attributes and methods for the sign in can be found in 'bbc_signinpage.rb' file
