using System;
using Xunit;

namespace WebApp.Tests
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            Assert.True(true);
        }

        [Fact]
        public void Test2()
        {
            // Uncomment to break tests
            //Assert.True(false);

            Assert.Equal("foo", "foo");
        }
    }
}
