require 'rails_helper'

RSpec.describe StoriesController, type: :controller do
  describe "POST create" do
    let(:story_params) { { title: "The Secret Life of Bees", content: "The Secret Life of Bees is a novel written by Sue Monk Kidd and it tells the story of a young girl named Lily Owens who is searching for answers about her past." } }
    
    it "creates a new story" do
      post :create, params: { story: story_params }
      expect(response).to redirect_to(stories_path)
      expect(Story.count).to eq(1)
      expect(Story.first.title).to eq("The Secret Life of Bees")
      expect(Story.first.content).to eq("The Secret Life of Bees is a novel written by Sue Monk Kidd and it tells the story of a young girl named Lily Owens who is searching for answers about her past.")
    end
  end
end