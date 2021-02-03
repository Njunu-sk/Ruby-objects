Memoization is a technique you can use to speed up your accessor methods, it caches results of methods that do time-consuming work, work that only needs to be done once.
Stores a computed value to avoid duplicated work by future calls.

Common pattern for memoizing a call is using the conditional assignment operator: ||=

Undestanding ||=

a ||= b is equivalent to a = a || b but it behaves like a || a = b
a || a = b, a is only set if a is logically false, the or, || is 'short cicuiting'.
ie. if the left hand side of the || comparison is true, there's no need to check the right hand side.

