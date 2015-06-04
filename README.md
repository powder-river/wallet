#Wallet Database

###Overview
This purpose of this application is to keep track of transactions made by one individual.
This application will display all recorded transactions, the total of expenditures, and the largest single expense amount.

###Instructions

From the root page follow the `here` links in order to get to create a new transaction or to view all recorded transactions.If you are creating a new transaction simoly fill out the `name` and `negotiation` fields and press `create` transaction. Note to indicate money leaving account you must put a `-`in front of the value like this : `-200` which means $200 has left the account.

From the Listing Transactions page you can view, edit, or destroy individual transactions.


###Developer Comments

The one big thing that I got caught up in was how to take care of requirements that required using the date. I tried to incorporate something along the lines of `if t.created_at.month == Time.now.month` into my methods so I could get date specific, however I typically got either `no method error` on `created_at`(which worked fine in a test) or an undfined variable for `t`. 
