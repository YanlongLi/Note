
## Consistent Hashing
[From][Consistent Hashing]

在动态变化的Cache环境中判断哈希算法好坏的四个定义：

1. 平衡性 Balance 
2. 单调性 Monotonicity
3. 分散性 Spread
4. 负载 Load

_How does `Consistent Hashing` satisfy definations above?_

## 异常处理中“Throws early, catch late”原则
[exception-handling][]

假设一个函数在接收错误的参数时出现bug，按照这个原则，
当程序出现问题的时候你就能立刻知道问题是出在函数的调用上。
如果直到用到整个参数的时候才进行处理，
那么要想找到问题所在就需要按着程序的执行反向推导才可以。
所以尽早的抛出异常能够让你更容易的找到问题的所在。
异常的处理一般放在high-level中，因为lower-level可能不知道什么是合适的处理方法。
事实上，可能有多种合适的处理方法。拿打开文件为例，如果打开一个不存在的配置文件，
合理的处理方法是忽略这个异常转而使用默认的配置文件; 
如果打开的是一个可执行文件但是缺少一些东西，那么往往只能关闭程序的执行。

另外，在不同的level中需要进行合理的异常包装，转换成符合当前执行环境的异常类型。

> "Wrapping the exceptions in the right types is a purely orthogonal concern."

还有再有就是异常的处理是为了让程序从错误中恢复，如果在该阶段进行处理不能达到这个目的，那么就不应该处理。




[exception-handling]: http://programmers.stackexchange.com/questions/231057/exceptions-why-throw-early-why-catch-late/231064#231064}
[Consistent Hashing]: http://blog.csdn.net/cywosp/article/details/23397179
