require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = build(:article)
  end

  it "is valid with title and content" do
    expect(@article).to be_valid
  end

  it "is invalid when title is empty" do
    @article.title = ""
    expect(@article).not_to be_valid
  end

  it "is invalid when content is empty" do
    @article.content = ""
    expect(@article).not_to be_valid
  end
end
