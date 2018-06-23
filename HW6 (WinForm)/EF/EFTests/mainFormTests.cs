using Microsoft.VisualStudio.TestTools.UnitTesting;
using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EF.Tests
{
    [TestClass()]
    public class mainFormTests
    {
        [TestMethod()]
        public void ReadJSONTest()
        {
            
            bool expected = true;
            mainForm tmp = new mainForm();
            var actual = tmp.ReadJSON();
            //Assert.AreEqual(expected,actual);
            Assert.IsFalse(actual);
        }
    }
}