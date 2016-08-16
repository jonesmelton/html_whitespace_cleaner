require "html_whitespace_cleaner/version"

##
# This module contains the public interface #clean and some private methods
# used within it.

module HtmlWhitespaceCleaner
  ##
  # Takes a string of html code and returns the same code but with extra
  # whitespace removed.
  #
  # It only removes whitespace between html tags. Formatting within tags is
  # preserved.

  def self.clean(html_string)
    remove_all_white_space_between_tags(condense_whitespace(html_string)).strip
  end

  private
  ##
  # Defines what is considered whitespace, and determines
  # whether or not it is contained inside an html tag.

  WHITE_SPACE_BETWEEN_TAGS = /(?<=>)\s+(?=<)/

  def self.remove_all_white_space_between_tags(html_string)
    html_string.gsub(WHITE_SPACE_BETWEEN_TAGS, "")
  end

  def self.condense_whitespace(html_string)
    html_string.gsub(/\s+/, " ")
  end

end
