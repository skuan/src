Pants on Fire
=============

The migrations in thir project have been hastily written by careless developers and now they are broken. Go through and fix the migrations until they run properly. There are five different problems that need to be addressed.

Instructions
------------

Start by running `$ rake db:migrate`. Then fix errors and bugs until you can pass the Litmus Test below.

Litmus Test
-----------

You will know everything is working when you meet these two conditions:

1. You can run `$ rake db:migrate` without errors.
2. You can paste this snippet of code into `rails console` and confirm it works:

    ```ruby
      Pant.create({ waist: 33, length: 34, price: 85, fabric: 'denim', fly: 'button', cool: true})

      # Confirm record was created by checking the count:

      Pant.count #=> Should be '1'
    ```