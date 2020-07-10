require 'rails_helper'


  describe CardController, type: :controller do
    it "showアクションのページに遷移するか" do
    allow("Payjp::Customer").to receive(:create).and_return(prepare_customer_information)
    @card = FactoryBot.create(:card)
    expect(@card.save).to render_template :show
    end
  end


 
    def prepare_customer_information # Payjp::Customerのレスポンスモック
      {
        "id": "cus_46021f3e03e3d1750b13315d14cc",
        "cards": {
          "count":1,
          "data":[{
            "id":"car_5226e8200a27247868a5b854ff27",
            "customer":"cus_46021f3e03e3d1750b13315d14cc",
            "cvc_check":"passed",
            "exp_month":12,
            "exp_year":2020,
            "last4":"4242",
            "livemode":false,
            "metadata":{},
            "name":nil,
            "object":"card"
            }],
   
          },
      
        }
      
    end
  