# frozen_string_literal: true

require_relative "toka1300_palindrome/version"

# Edits the string class to allow for palindrome detection
module Toka1300Palindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  # ---Testing---
  def test_non_palindrome
    assert !"apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  private

  def processed_content
    scan(/[a-zA-Z]/).join.downcase
  end
end

class String
  include Toka1300Palindrome
end
