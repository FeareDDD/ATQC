using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;

namespace CSVconverter
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("");
            //ReadCSV();
            saveJSON();
            Console.ReadLine();
        }

        public static XElement ReadCSV()
        {
            string csvString = @"Edelweiss;11;5/25/1988;180;4,3;
Bristol;12;4/3/1965;140;4,1;
Hilton;1;10/02/1863;321;2,0;
Balaton;50;5/1/2000;110;;
Empire;13;7/25/2011;240;5,0;";
            File.WriteAllText("cust.csv", csvString);

            string[] source = File.ReadAllLines("cust.csv");
            XElement hotel = new XElement("Info",
                from str in source
                let fields = str.Split(';')
                select new XElement("Hotel",
                    new XAttribute("HotelName", fields[0]),
                    new XElement("HotelId", fields[1]),
                    new XElement("FoundedDate", fields[2]),
                    new XElement("TouristCapacity", fields[3]),
                    new XElement("Rating", fields[4]))

            );
            //Console.WriteLine(hotel);
            //cust.Save("xml.xml");
            return hotel;
        }

        public static void saveXML(XElement hotel)
        {
            
        }

        public static void saveJSON()
        {
            var csv = new List<string[]>();
            var lines = System.IO.File.ReadAllLines(@"F:\FeareD\GitHub\ATQC\HW5\CSVconverter\CSVconverter\bin\Debug\cust.csv");
            foreach (string line in lines)
            {
                csv.Add(line.Split(';'));
                Console.WriteLine(line);
            }
                      
            string json = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(csv);
            Console.WriteLine(json);
            System.IO.File.WriteAllText(@"F:\FeareD\GitHub\ATQC\HW5\CSVconverter\CSVconverter\bin\Debug\json.txt", json);
        }
    }
}
