# M-Pesa Express API Integration in Rails
This is a sample Rails application that demonstrates how to integrate the M-Pesa Express API into your application for processing payments.

Getting Started
To get started with the application, follow the steps below:

1. Clone the repository to your local machine:

git clone https://github.com/your-username/mpesa-express-rails.git

2. Navigate to the project directory:

cd mpesa-express-rails

3. Install the required dependencies:

bundle install

4. Create the database and run the migrations:

rails db:create
rails db:migrate


5. Set up the M-Pesa API credentials and parameters by creating a .env file in the root of your project directory and adding the following keys and values:

DARAJA_CONSUMER_KEY=<your M-Pesa API consumer key>
DARAJA_CONSUMER_SECRET=<your M-Pesa API consumer secret>
DARAJA_SHORTCODE=<your M-Pesa API shortcode>
DARAJA_PASSKEY=<your M-Pesa API passkey>

6. Start the Rails server:

rails s

7. Visit http://localhost:3000 to view the application.

# Usage

To use the application, follow these steps:

1. Navigate to the home page of the application.
2. Enter your phone number and the amount you want to pay.
3. Click the 'Pay with M-Pesa' button to initiate the payment.
4. You will be redirected to the M-Pesa payment page where you will enter your M-Pesa PIN to confirm the payment.
5. Once the payment is confirmed, you will be redirected back to the application and a confirmation message will be displayed.

# Dependencies

The following dependencies were used in the development of this application:

Ruby 3.0.0
Rails 6.1.3
httparty
dotenv-rails
jwt
openssl

# License
This application is licensed under the MIT License. See the LICENSE file for details.

# Contributing

Contributions are welcome. To contribute to this project, please fork the repository, create a new branch, make your changes, and submit a pull request.1.

