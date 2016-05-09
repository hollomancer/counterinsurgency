MODIFIERS

Modifiers are objects that determine the outcome of any game decision point. A 'check' is parlance for when these modifiers are called upon to determine an appropriate outcome.

Each outcome of a choice has a base chance it will be selected attached to it. The base chance coupled to an outcome determines the percentage chance that it will take place. However, every outcome has more than just its inherent base chance affecting it - there are also all the modifiers from the current state of the game. The degree that these game modifiers affect an outcome is authored with the outcome itself, with minimum and maximum ranges.

CHECKS

Any time a check is made, an array of outcomes is associated with those checks, roughly associated to two primary and two secondary ratings;
 - Pass rating,
 - Fail rating,
 - Crit pass rating,
 - Crit fail rating,
 - Other rating (see below)
The check process consists of the following steps;
 - Get the total sum of all ratings and generate thresholds for rating to outcome.
 - Use the game random seed to select a number from zero to total sum of ratings.
 - Identify where the random pick sits in the spectrum of ratings.
 - Report back the outcome.
Some choices have additional outcomes besides the four 'regular' ones that only occur. These are considered special outcomes and must be used sparingly (burdensome on content authoring). Special outcomes have their own ratings.
