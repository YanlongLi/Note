
### Try async and wait

```C#
class Program
{
	static async Task<string> ComputeAsync(int n)
	{
		var task = Task.Run(() =>
		{
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < n; i++)
			{
				Console.WriteLine("High Computing, sleep " + i);
				Thread.Sleep(1000);
				sb.Append(i.ToString());
			}
			return sb.ToString();
		});
		string str = await task;
		Console.WriteLine(str);
		return str;
	}

	static async Task<int> TestAsync()
	{
		Task<string> task = ComputeAsync(10);
		for (int i = 0; i < 10; i++)
		{
			Console.WriteLine(i);
		}
		Console.WriteLine("before await task");
		string content = await task;
		Console.WriteLine("after await task");
		return content.Length;
	}

	static async Task Test()
	{
		var resultTask = TestAsync();
		Console.WriteLine("before await result task");
		int result = await resultTask;
		Console.WriteLine("after await result task");
		Console.WriteLine("Result: " + result);
	}
	static void Main(string[] args)
	{
		Test();
		Console.WriteLine("Main End");
		Console.ReadLine();
	}
}
```

Output:
```
0
1
2
3
4
5
6
7
8
9
before await task
High Computing, sleep 0
before await result task
Main End
High Computing, sleep 1
High Computing, sleep 2
High Computing, sleep 3
High Computing, sleep 4
High Computing, sleep 5
High Computing, sleep 6
High Computing, sleep 7
High Computing, sleep 8
High Computing, sleep 9
0123456789
after await task
after await result task
Result: 10
```
