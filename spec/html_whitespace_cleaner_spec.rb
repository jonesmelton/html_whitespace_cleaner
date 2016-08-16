# coding: utf-8
require 'spec_helper'

describe HtmlWhitespaceCleaner do

  it 'has a version number' do
    expect(HtmlWhitespaceCleaner::VERSION).not_to be nil
  end

  it 'removes whitespace between simple tags' do
    expect(HtmlWhitespaceCleaner.clean(SIMPLE_TAGS)).to eq('<body><p> thing </p></body>')
  end

  it 'removes whitespace between complex tags' do
    expect(HtmlWhitespaceCleaner.clean(GROSS_TAGS)).to eq(CLEAN_RESULTS)
  end

end
