# Let Them Eat Cake

## ERD

<img src = "./Documentation/ERD Diagram.png"/>

## Wire Frames

To view our [wire frames](https://whimsical.com/let-them-eat-cake-BEgKfTVEYewmND7CPhFNvD)

<img src = "./Let them eat Wireframes.png"/>


### Our Requirements

Our database had to fulfill the following requirements:

1. A customer should be able to build a cake and get the total price.
2. A customer should be able to add their orders to their cart.
3. A customer should be able to order a cake for themselves and have it delivered.

### How to set up the database

Once connected to the AWS instant for SQL Server Management Studio

1. Execute the [Create Database](SQLScripts\CreateDatabase.sql).
2. Execute the [Run Scripts](SQLScripts\RunScripts.sql) to do the following:
    * Create all tables.
    * Create views, stored procedures, and user-defined functions.
    * Insert data.

At this point, the database will be up and running, so in the words of the inspiration for the name the database

> ***"Let them eat cake"***
> -- <cite>Marie Antoinette, Queen of France and Navarre</cite>
