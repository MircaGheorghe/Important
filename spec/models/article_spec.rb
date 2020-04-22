# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  text       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

describe Article do
  context "validation tests" do
    it "ensures text is present" do
      article = Article.new(text: "Test body")
      expect(article.valid?).to eq(false)
    end

    it "ensures title is present" do
      article = Article.new(title: "Test title")
      expect(article.valid?).to eq(false)
    end

    it "should save an artile" do
      article = Article.new(title: "Test title", text:"Test text")
      expect(article.save).to eq(true)
    end

    it "should not save an artile without text" do
      article = Article.new(title: "Test title")
      expect(article.save).to eq(false)
    end

    it "should not save an artile without title" do
      article = Article.new(text: "Test title")
      expect(article.save).to eq(false)
    end
  end
end
