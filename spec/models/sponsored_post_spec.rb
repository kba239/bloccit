require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:sponsored_post) { topic.sponsored_post.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(sponsored_post).to have_attributes(title: sponsored_post.title, body: sponsored_post.body)
    end
  end
end
