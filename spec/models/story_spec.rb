require 'rails_helper'

RSpec.describe Story, type: :model do
  subject { Story.new(title: "The Secret Life of Bees
", content: "The Secret Life of Bees is a novel written by Sue Monk Kidd and it tells the story of a young girl named Lily Owens who is searching for answers about her past.")}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a title" do
    subject.title=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a content" do
    subject.content=nil
    expect(subject).to_not be_valid
  end
end
