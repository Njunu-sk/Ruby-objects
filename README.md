## Ruby-objects

## Delegate 

- Delegate provides a delegate class method to easily expose contained objects public methods as your own. 

- Through delegation you can use public methods in another model directly.

## Duck Typing 

- Duck-Typing Ruby relies less on the type or class of an object and more on its capabilities. 

- Duck typing means that an object is defined by what it can do, not by what it is.  

- Duck typing refers to the tendency of Ruby to be less concerned with the class of an object and more concerned with what methods can be called on it and what operations can be performed on it.

- If an object walks like a duck and talks like a duck, then its a duck.

## Dup and Freeze 

- If you want to protect objects from being changed inside methods to which you send them, you can use dup method.

- (dup) duplicates an object you can also freeze an object, preventing it from undergoing further changes.

- Note: freeze is forever. 

- Clone is alot like dup, the difference in that when you clone a frozen object, the clone is also frozen but when you dup a frozen object the duplicate isn't frozen.

- With these tools in hand dup, clone and freeze you can protect your objects against most rogue change operations.

## Grep 

- Grep is one of the instance methods defined on the Enumarable module.

- This means you can use it on all Ruby classes that includes the Enumarable module. 

- The Enum module is a place hwere many other popular collection methods are defined.
