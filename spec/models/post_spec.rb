require 'rails_helper'

describe 'Post' do

  before do
    @post = Post.create(title: "Tidying Up", content: "Does it bring you joy? If you answer yes, you keep the item. If you hesitate or say no, you donate it or throw it out.")
    @category1 = Category.create(name: "Decluttering")
    @category2 = Category.create(name: "Empowering")
    @post_category1 = PostCategory.create(post: @post, category: @category1)
    @post_category2 = PostCategory.create(post: @post, category: @category2)
  end

  it 'has a title' do
    expect(@post.title).to eq("Tidying Up")
  end

  it 'has content' do
    expect(@post.content).to eq("Does it bring you joy? If you answer yes, you keep the item. If you hesitate or say no, you donate it or throw it out.")
  end

  it 'has many categories' do
    expect(@post.categories).to eq([@category1, @category2])
  end
end