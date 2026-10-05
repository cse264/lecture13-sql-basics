# Lecture 13 In-Class Activity: SQL Basics with ValleyEats

Work with a partner. We'll stop three times to talk about what people found, so when you get to a **Stop** line, finish the query you're on and wait for the rest of the class.

## Getting set up

1. Connect to the ValleyEats database in DBeaver with your own account. The connection details are on CourseSite.
2. Open `examples.sql` (File > Open File) and make sure it's using your ValleyEats connection. These are the queries from lecture. Click on one and press **Ctrl+Enter** (**Cmd+Enter** on a Mac) to run just that one. Run a few to warm up.
3. Write your own queries in `activity.sql`, under the heading for each part.

You can't change or break any of the data, so try whatever you want. The tables are described on the Project 6 page if you need a reminder of what's in them.

## Part 1: Finding rows (about 7 minutes)

Write a query for each of these:

- Show 20 orders, but only the columns for when the order was placed, which zone it went to, the subtotal, and the tip.
- Find the 5 biggest orders, by subtotal, that were delivered to Lehigh Campus (`LUC`).
- How many orders had 6 or more items?
- Count the orders that tipped less than $1. Then count the orders that tipped $1 or more. Add those two numbers together, and compare the result to the total number of orders.

**Stop.** Did your two tip counts add up to the total? If they didn't, see if you can figure out where the missing orders went before we talk about it.

## Part 2: Counting and grouping (about 8 minutes)

- What was the average tip? What were ValleyEats' total food sales for the whole year?
- How many restaurants are there at each price level?
- For each order size (number of items), how many orders were there, and what was the average subtotal?
- Find every `driver_id` that delivered more than 900 orders.
- Now find every `driver_id` that delivered more than 175 orders over $40. Is the same driver on top?

**Stop.** Be ready to show how you got the last one to work. What happens if you put `count(*)` in the `WHERE` part instead? Try it if you haven't already.

## Part 3: Text and buckets (about 7 minutes)

- Find all the pizza places on ValleyEats.
- Label every order as `early`, `on time`, or `late` based on its `delivery_delay`, and count how many orders fall into each label.

When you have your counts, check your `late` number against a plain count of orders where `delivery_delay` is greater than 0.

**Stop.** How many pizza places did you find, and how did you search for them? Did your two late counts match?

## If you finish early

Stay on the part you're on and try one of these:

- Show each restaurant's price level as dollar signs (`$`, `$$`, `$$$`) instead of a number.
- Which restaurants opened before 2000?
- Search restaurant names for `pizza`, all lowercase. What happens? Find a way to search that doesn't care about capitalization.
- Find every restaurant whose name starts with "The".

## Before you leave

Make sure both names are at the top of `activity.sql`, then commit and push it before the end of class.
