using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Web.Script.Serialization;
using System.Xml.Serialization;

namespace CSVconverter
{
    class Program
    {
        static void Main(string[] args)
        {
            Menu();
            Console.ReadLine();
        }

        public static void Menu()
        {
            string str = Environment.CurrentDirectory;
            Console.Clear();
            Console.WriteLine("Convert to: ");
            Console.WriteLine("1) XML");
            Console.WriteLine("2) JSON");
            Console.WriteLine("3) Open folder with converted files");
            Console.WriteLine("Press 1-3 to select action...");
            int tmp = Convert.ToInt32(Console.ReadLine());

            switch (tmp)
            {
                case (1):
                    Console.Clear();
                    ReadCSV(true);
                    break;
                case (2):
                    Console.Clear();
                    ReadCSV(false);
                    break;
                case (3):
                    Process.Start(str);
                    Console.Clear();
                    Menu();
                    break;
                default:
                    Console.WriteLine("Wrong number. Try again? (y/n)");
                    GetToMenu();
                    break;
            }
        }

        public static void GetToMenu()
        {
            bool check = false;
            while (!check)
            {
                string status = Console.ReadLine();
                if (status == "y")
                    Menu();
                else if (status == "n")
                {
                    check = true;
                    Console.WriteLine("See you!");
                    Environment.Exit(0);
                    break;
                }
            }
        }

        public static void ReadCSV(bool flag)
        {
            string inputCSV = ConfigurationManager.ConnectionStrings["inputCSV"].ConnectionString;
            StreamReader sr = new StreamReader(inputCSV);
            String line;
            List<Hotel> hotelsList = new List<Hotel>();
            while ((line = sr.ReadLine()) != null)
            {
                String[] parts = line.Split(';');
                Hotel hotel = new Hotel();
                parts[0] = parts[0].Replace('"', ' ').Trim();
                hotel.name = parts[0].Trim();
                hotel.id = Convert.ToInt32(parts[1]);
                hotel.foundedDate = parts[2].Trim();
                hotel.capacity = Convert.ToInt32(parts[3]);
                parts[4] = parts[4].Replace('.', ',').Trim();
                if (parts[4] == "")
                    parts[4] = "0";
                hotel.rating = Convert.ToDouble(parts[4]);
                hotelsList.Add(hotel);
            }
            sr.Close();
            List<Hotel> SortedList = hotelsList.OrderBy(o => o.rating).ToList();
            if (flag)
                saveXML(SortedList);
            else
                saveJSON(SortedList);
        }

        public static void saveXML(List<Hotel> hotels)
        {
            StringBuilder output = new StringBuilder();
            var writer = new StringWriter(output);
            string outputXML = ConfigurationManager.ConnectionStrings["outputXML"].ConnectionString;
            XmlSerializer serializer = new XmlSerializer(typeof(List<Hotel>));
            serializer.Serialize(writer, hotels);
            Console.WriteLine(output.ToString());
            System.IO.File.WriteAllText(outputXML, output.ToString());
            Console.WriteLine("\nBack to menu? y/n");
            GetToMenu();
        }

        public static void saveJSON(List<Hotel> hotels)
        {
            var jsonSerialiser = new JavaScriptSerializer();
            var json = jsonSerialiser.Serialize(hotels);
            Console.WriteLine(json);
            string outputJSON = ConfigurationManager.ConnectionStrings["outputJSON"].ConnectionString;
            System.IO.File.WriteAllText(outputJSON, json);
            Console.WriteLine("\nBack to menu? y/n");
            GetToMenu();
        }
    }
}
