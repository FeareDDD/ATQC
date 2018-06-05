using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp
{
    class Car
    {
        public string Model;
        public string Color;
        public double Price;

        public Car()
        {
            Model = "Honda";
            Color = "red";
            Price = 322;
        }

        public Car(string model, string color, int price)
        {
            this.Model = model;
            this.Color = color;
            this.Price = price;
        }
        public void Input()
        {
            Console.WriteLine("New car: ");
            Console.Write("car model: ");
            this.Model = Console.ReadLine();
            Console.Write("car color: ");
            this.Color = Console.ReadLine();
            Console.Write("car price: ");
            this.Price = Convert.ToDouble(Console.ReadLine());
        }

        public void Print()
        {
            Console.WriteLine("======");
            Console.WriteLine("Car model: {0} \n Car color: {1} \n Car price: {2}", this.Model,this.Color,this.Price);
        }

        public void ChangePrice(double x)
        {
            double tmp = (x * 100)/ this.Price;
            this.Price -= tmp;
            Console.WriteLine("New price: {0}", this.Price);
        }
    }
}
