module PayjpMock
  def self.prepare_customer_information # Payjp::Customerのレスポンスモック
    {
      "id": "cus_46021f3e03e3d1750b13315d14cc",
      "cards": {
        "count":1,
        "data":[{
          "id":"car_5226e8200a27247868a5b854ff27",
  
          "created":2020-07-09 18:39:05.564219,
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
end
