#Query if payment has been made.
#use this if you dont have
require "base64"
require "excon"
require "json"

require_relative "./auth"
require_relative "./mpesa_express"
require_relative "./mpesa_time"

t=mpesa_time

pass_key="bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919"
paybill=174379
url="https://sandbox.safaricom.co.ke/mpesa/stkpushquery/v1/query"

password=Base64.strict_encode64("#{paybill}#{pass_key}#{t}")

m_express = mpesa_express(1,254798450464)

data={
  "BusinessShortCode": paybill,
  "Password": password,
  "Timestamp": t,
  "CheckoutRequestID": m_express["CheckoutRequestID"],
}

token=access_token

sleep(7)

response=Excon.post(url,:body=>JSON.generate(data),headers:{'Content-Type': 'application/json','Authorization': "Bearer #{token}"})


# puts response.status
puts response.body