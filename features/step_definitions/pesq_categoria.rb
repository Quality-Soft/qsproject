Given(/^I am on the meis page$/) do
  visit(meis_path)
end

Given(/^I am on the home page$/) do
  visit(:home)
end

When(/^I go to meis page$/) do
  visit(:meis)
end

When(/^I select "(.*?)" from "(.*?)"$/) do |arg1, category|
  #page.select_option("Comércio", :from => category)
  #find("category[value='2']").click
  page.find_by_id('areaatuacao').find("category[value='2']").select_option
  #select(value, :from => field)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button(placeholder: "Pesquise")
end
      
When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
   fill_in(arg1, :with => arg2)
end

Then(/^the page should display as a result "(.*?)"$/) do |arg1|
  #page.has_text?("EMMERSON OSEILDO")
  #page.has_text?("EMERSON OSEILDO") => Boolean ()
  page.has_text?("EMERSON OSEILDO", count: 0)
  #page.has_text?('lorem ipsum', between: 2..4)
end

Then(/^page should have javascript message "(.*?)"$/) do |arg1|
  page.has_text?("Não encontramos nenhum mei para esta pesquisa.")
end



=begin
page.has_text?('lorem ipsum', between: 2..4)
This will check if the text occurs from 2 to 4 times.

Overloads:
#has_text?(type, text, options = {}) ⇒ Boolean
Parameters:
type (:all, :visible) — Whether to check for only visible or all text
text (String, Regexp) — The string/regexp to check for. If it's a string, text is expected to include it. If it's a regexp, text is expected to match it.
Options Hash (options):
:count (Integer) — default: nil — Number of times the text is expected to occur
:minimum (Integer) — default: nil — Minimum number of times the text is expected to occur
:maximum (Integer) — default: nil — Maximum number of times the text is expected to occur
:between (Range) — default: nil — Range of times that is expected to contain number of times text occurs
:wait (Numeric) — default: Capybara.default_max_wait_time — Maximum time that Capybara will wait for text to eq/match given string/regexp argument
#has_text?(text, options = {}) ⇒ Boolean

Parameters:
text (String, Regexp) — The string/regexp to check for. If it's a string, text is expected to include it. If it's a regexp, text is expected to match it.
Options Hash (options):
:count (Integer) — default: nil — Number of times the text is expected to occur
:minimum (Integer) — default: nil — Minimum number of times the text is expected to occur
:maximum (Integer) — default: nil — Maximum number of times the text is expected to occur
:between (Range) — default: nil — Range of times that is expected to contain number of times text occurs
:wait (Numeric) — default: Capybara.default_max_wait_time — Maximum time that Capybara will wait for text to eq/match given string/regexp argument
Returns:
=end
