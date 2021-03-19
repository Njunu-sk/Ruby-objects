If you want to protect objects from being changed inside methods to which you send them, you can use dup method.
(dup) duplicates an object
You can also freeze an object, preventing it from undergoing further changes.
Note: freeze is forever.
Clone is alot like dup, the difference in that when you clone a frozen object, the clone is also frozen but when you dup a frozen object the duplicate isn't frozen.

With these tools in hand dup, clone and freeze you can protect your objects against most rogue change operations.
