# Credit Card Fraud - Week 7 (SQL+PyViz)


#### Moh Jaiswal
#


# <b>Data Analysis Report</b>

#

# Part 1

<b>Question:</b> How can you isolate (or group) the transactions of each cardholder?

<b>Answer:</b> Run VIEW "TransactionsperCardHolderID", this shows line by line data per cardholder as one user has multiple cards. Multiple "card" values for one "card_holder_id."

#

<b>Question:</b> Count the transactions that are less than $2.00 per cardholder.

<b>Answer:</b> Run VIEW "LessThan2DollarTransactionsPerCardHolderID$2" for the count of transactions that are less than $2.00 per cardholder.

#

<b>Question:</b> Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.

<b>Answer:</b> Keeping in mind that less than 2 dollar amount transactions account for exactly 10% of the dataset. Implying that they are rear and easily miscontrued. Yes there are a lot of individuals who have more than 15 dollars worth of smaller than 2 dollar transactions. As you can see in the aformentioned view and in the diagram below,  these small transactions summed up and arranged from highest to lowest for a clear snapshot of fraud being evident. 
![A screenshot of the result.](/Users/mohjaiswal/Desktop/Unit-7-Homework-Asn/Top10FraudVictims.jpg)
#

<b>Question:</b> What are the top 100 highest transactions made between 7:00 am and 9:00 am?

<b>Answer:</b> Run VIEW "top100" for the top 100 highest transactions made between 7:00 am and 9:00 am

#
<b>Question:</b> Do you see any anomalous transactions that could be fraudulent?

<b>Answer:</b> Out of 275 transactions that happened between 7-9am, 30 were sub 2 dollars. At percentage of 11%, it is at this time when this figure is slightly higher than the population average of 1/10 transactions being sub 2 dollars.

#

<b>Question:</b>Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?

<b>Answer:</b> The population average of sub 2 dollar transactions is 10% of 350/3500. Between 7-9am this number is around 11%, therefore you could say that the likleyhood of having a fraudulent transaction is numerically higher, only by a bit. Regardless to say that there is a good chance that fraud and time of day are not highly correlated. 

#

<b>Question:</b> If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

<b>Answer:</b> This time is when most working people are either going to work and grabbing some food/drink on the way. They are most susecptible to credit card with tap technology to be fraudulently swiped through a EMF reader. This is only one of the ways that a credit card can be hacked, there are other ways that not time bound but have other interpersonal factors like proximity to card, info on the card holder their billing address and such. 

#

<b>Question:</b> What are the top 5 merchants prone to being hacked using small transactions?

<b>Answer:</b> Assume that merchants charging less than 2$s are the vitcims:
Johnson-Watts (resturant), Henderson and Sons (resturant),  Hess and Finley Scott (bar), Pugh-Williams (bar), Ruiz-Anderson (pub). No particular type of merchant is more prone, but these are the ones most likely prone to fraudulent activities.

![A screenshot of the result.](/Users/mohjaiswal/Desktop/Unit-7-Homework-Asn/TopMerchantVictim.jpg)
#



