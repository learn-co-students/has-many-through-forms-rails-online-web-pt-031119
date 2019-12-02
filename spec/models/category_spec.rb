require 'rails_helper'

describe 'Category' do

  before do
    @category = Category.create(name: "Decluttering")
    @post1 = Post.create(title: "Tidying Up", content: "Does it bring you joy? If you answer yes, you keep the item. If you hesitate or say no, you donate it or throw it out.")
    @post2 = Post.create(title: "Simplify your JavaScript", content: "Use .map(), .reduce(), and .filter()")
    @post_category1 = PostCategory.create(post: @post1, category: @category)
    @post_category2 = PostCategory.create(post: @post2, category: @category)
  end

  it 'has a name' do
    expect(@category.name).to eq("Decluttering")
  end

  it 'has many posts' do
    expect(@category.posts).to eq([@post1, @post2])
  end
end