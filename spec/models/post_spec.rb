require 'rails_helper'

RSpec.describe Post, type: :model do

  it "requires title" do
    post = Post.create(title: nil)
    expect(post).to_not be_valid
  end

  it "requires important" do
    post = Post.create(title: "test", important: nil)
    expect(post).to_not be_valid
  end

  it "requires use" do
    post = Post.create(title: "test", important: "test", use: nil)
    expect(post).to_not be_valid
  end

  it "requires content" do
    post = Post.create(title: "test", important: "test", use: "test", content: nil)
    expect(post).to_not be_valid
  end

end
