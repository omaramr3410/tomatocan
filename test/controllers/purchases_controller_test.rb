require 'test_helper'

class PurchasesControllerTest < ActionController::TestCase
  setup do
    @purchases = purchases(:one)
  end
    #not in purchases_controller???
    #test run to assert index of purchase found
    test "should_get_purchases_index" do
      sign_in users(:one)
      get :index
      assert_response :success
    end
    
    #test run to assert user's information can be obtained for new purchase i.e. must have stripe token
    test "should_get_purchases_new_purchase" do
      @merchandises = merchandises(:one)
      sign_in users(:one)
<<<<<<< HEAD
      get :new, params: {merchandise_id: @purchases.merchandise_id }
=======
      get :new, params: { merchandise_id: @merchandises.id }
>>>>>>> b0de30e80e6bcc26abb0ba750b8a05ca3634f66
      assert_response :success
    end

    #test run to assert new donation can be made
    test "should_get_purchases_new_donate" do
      sign_in users(:one)
      seller = users(:two)
      get :new, params: { pricesold: 25, author_id: seller.id }
      assert_response :success
    end

    #test run to assert purchases are shown correctly
    #probably need additional test to show difference between merchandise & donation
    test "should_get_purchases_show" do
      sign_in users(:one)
      get :show, params: {id: @purchases.id }
      assert_response :success
    end
<<<<<<< HEAD

    #test run to assert user can create new purchase
    test "should_create_purchases" do
      sign_in users(:one)
      assert_difference 'Purchases.count', 1 do
        post :create, params: {}
      end
    end

    #not used in purchases_controller
    # test "should_update_purchases" do
    #   sign_in users(:one)
    #   get :update, params: {id: @purchases.id}
    #   assert_response :success
    # end
=======
    
>>>>>>> b0de30e80e6bcc26abb0ba750b8a05ca3634f66f
end