require 'test_helper'

class TagTest < ActiveSupport::TestCase
  test "Add new tag to an Article" do
    article = articles(:one)
    Tag.add_tag(article, "FirstTag")
    assert_equal(article.tags[0], "FirstTag", "The tag was not added to the object")
  end
  test "Add one more tag to an Article" do
    article1 = articles(:one)
    article2 = articles(:two)
    Tag.add_tag(article1, "FirstTag")
    Tag.add_tag(article2, "SecondTag")
    assert_equal(article.tags[1], "SecondTag", "The second tag was not added to the object")
  end  
end
