# Shopping Cart Carnes Asadas Rodriguez

# Prerequisites

Ruby 2.7.0

Rails 6.1.6

SQLite 1.4

Clone the repo https://github.com/JulianRodriguez29/CarnesAsadasRdz.git

Once you have the copy, run the following commands inside the directory:

Run bundle install in order to install all the project gems
Set up the username and password in the config/database.yml
Run the following commands to create the databases, run the initial migrations and run the the seeds rails db:create && rails db:migrate && rails db:seed
Start the application with the command rails server or the shortcut rails s
Run the following command bin/webpack-dev-server to enable live reloadig.
Go to your local host http://127.0.0.1:3000

# General Info

This project is a shopping cart with many features. As a user you can add products to the cart, empty the cart, make the purchase of your products, at the time of making the purchase you will receive an email confirming your order and if the user wishes, they can send an email to the application for any disagreement.
As an administrator you can see, create, delete and modify users, see the list of products and all their operations, see the orders made by users and you can answer the emails that users have sent to the application.
In this example I only added three products and due to time constraints the application cannot make the payment by card. The app supports many languages.

# Screenshots

* Principal page
* Here we see the list of products, a side navigation bar and in the upper right corner we see the option to change the language of the application
![Screenshot](./screenshots/pagina-principal.png)

![Screenshot](./screenshots/pagina-principal-esp.png)

* Cart with products
![Screenshot](./screenshots/carrito-con-productos.png)

* Empty cart
![Screenshot](./screenshots/empty-cart.png)

* Checkout
* In the checkout section the user can choose the different forms of payment available and the application will show only the fields required for that type of payment.
![Screenshot](./screenshots/check-out.png)
![Screenshot](./screenshots/checkout-efectivo.png)
![Screenshot](./screenshots/credit-cart-payment.png)

* Confirmation email
* Once the user has placed their order, they will receive a confirmation email.
![Screenshot](./screenshots/despues-de-realizar-pedido.png)
![Screenshot](./screenshots/confirmacion-de-pedido.png)

* Admin
* Only a user with the correct credentials has the ability to access user options.
![Screenshot](./screenshots/login.png)
![Screenshot](./screenshots/admin.png)
![Screenshot](./screenshots/logout.png)

* List of users
![Screenshot](./screenshots/users.png)

* List of products
![Screenshot](./screenshots/products.png)

* List of orders
![Screenshot](./screenshots/orders.png)

* Validations
![Screenshot](./screenshots/password-or-username-incorrect.png)
![Screenshot](./screenshots/user-data-validation.png)

* Inbound emails
![Screenshot](./screenshots/inbound-emails.png)

* New inbound emails
* If a user wants to send an email, he has to do it to the email support@example.com
![Screenshot](./screenshots/new-inbound-email.png)

* Response request
![Screenshot](./screenshots/response-requests.png)

* Response request handled
![Screenshot](./screenshots/response-request-handled.png)

* Email of Response request handled
![Screenshot](./screenshots/email-of-response-requeste-handled.png)

* Cronograma
<img width="944" alt="cronograma" src="https://user-images.githubusercontent.com/50123134/187199242-4f0a655b-fff9-40f8-895c-a70bde7eca18.png">
