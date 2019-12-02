require 'rails_helper'

describe 'PostCategory' do

  before do
    @post = Post.create(title: "Tidying Up", content: "Does it bring you joy? If you answer yes, you keep the item. If you hesitate or say no, you donate it or throw it out.")
    @category = Category.create(name: "Decluttering")
    @post_category = PostCategory.create(post: @post, category: @category)
  end

  it 'belongs to a post' do
    expect(@post_category.post).to be(@post)
  end

  it 'belongs to a category' do
    expect(@post_category.category).to be(@category)
  end

end