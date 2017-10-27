# Bubble Sort project

This is my implementation of the [bubble sort algorithm](https://en.wikipedia.org/wiki/Bubble_sort).

It's a project from [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks).

![Bubble Sort gif](https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif).

The code features two methods that both implement a bubble sort. The second takes a block, while the first doesn't.

## Installation

Open your terminal/command line. Navigate to the directory where you want this project to live. Type:
```
$ git clone https://github.com/JonoSenior/bubble_sort.git
$ cd bubble_sort
$ ruby bubble_sort.rb
```

## Pre-project thoughts

This motivation for this project is to practice taking an algorithm and turning it into useful code. It's also a chance to get "under the hood" of Ruby and gain a basic understanding of what #sort does behind the scenes. 

## Post-project thoughts

The bubble sort is notoriously slow compared to more sophisticated sorting algorithms. I was happy to include two optimisations on its basic form in my code:
  1. Since each loop will necessarily push the final element to it's final position at the end of the array, you can ignore the final n elements after n loops.
  2. The method will automatically return once the array is sorted (rather than continuing through superfluous loops). This is achieved through a "swapped" variable that clocks if any change has been made (and therefore if the array is already sorted).

I found writing the basic algorithm relatively straightforward, while adding the two optimisations took a bit more effort.

I look forward to learning about more sophisticated sorting algorithms later, and about how to assess their effectiveness (ie learning about benchmarking with Big O notation).
