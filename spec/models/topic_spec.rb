require 'rails_helper'

RSpec.describe Topic, type: :model do

  it "topic requires a title" do
    topic = Topic.create(:title => nil)
    expect(topic).to_not be_valid
  end

it "topic requires a description" do
  topic = Topic.create(title: "test", description: nil)
  expect(topic).to_not be_valid
end

end
