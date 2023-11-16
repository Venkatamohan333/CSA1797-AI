
male(john).
male(bob).
male(jim).
female(lisa).
female(susan).
female(emma).
parent(john, lisa).
parent(john, bob).
parent(susan, lisa).
parent(susan, bob).
parent(bob, emma).
parent(emma, jim).
father(Father, Child) :- male(Father), parent(Father, Child).
mother(Mother, Child) :- female(Mother), parent(Mother, Child).
child(Child, Parent) :- parent(Parent, Child).
grandparent(Grandparent, Grandchild) :- parent(Grandparent, Parent), parent(Parent, Grandchild).
