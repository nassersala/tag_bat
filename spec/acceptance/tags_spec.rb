require 'spec_helper'

describe 'Adding and removing tags' do
  let(:article) { Article.create }
  let(:pancakes) { TagBat::Tag.create :name => 'pancakes'}

  it "stores new tags" do
    article.tags << pancakes

    article.tags.reload.should == [pancakes]
  end
  
  it "removes exisiting tags" do
    article.tags << pancakes

    article.tags.delete pancakes
    article.tags.reload.should == []
  end
end

