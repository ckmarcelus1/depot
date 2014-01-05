require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3' 'Programming Ruby 1.9'
    assert_select '.price' , /\$[,|d]+\.\d\d/
  end

end

#selectors that start with a number sign (#) match on id attributes, 
#selectors that start with a dot (.) match on class attributes, 
#and selectors that contain no prefix at all match on element names.