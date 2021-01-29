:- dynamic male/1.
:- dynamic father/1.
:- dynamic parent/2.
parent(michael, cathy).
parent(melody, cathy).
parent(charles_gordon, michael).
parent(hazel, michael).
male(michael).
male(charles_gordon).
female(cathy).
female(melody).
female(hazel).
father(X,Y):- parent(X,Y), male(X).
mother(X,Y):- parent(X,Y), female(X).