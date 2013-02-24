ivy
===

A simple image viewer written in Haskell

The goal of this project is to create a simple, fast, image viewer that just does
one thing: shows an image. The program is designed to be run from the command line
and display the image in a simple interface, allowing for scrolling/zooming of the
image if it is too big for the window. The inspiration comes from working with a
tiling window manager where a lot of things were done via a terminal. Opening an
image in something like xv is just overkill if the only thing you want to do is
simply view the image (I mean, who wants all those extras there anyway? Am I right?)

Building \& Installation
=======================

To build:

- $ cabal configure
- $ cabal build

To install:

- $ cabal install

To run:

- $ ivy \<image name\>

Contact
=======

Author: Lance Clark \<haYnguy@gmail.com\>

