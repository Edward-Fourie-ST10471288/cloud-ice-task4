using Xunit;

public class GreeterTests
{
    [Fact]
    public void GetMessage_ReturnsExpectedText()
    {
        var result = Greeter.GetMessage();
        Assert.Equal("Hello from UserApi! Running in Docker on my Azure VM.", result);
    }
}
