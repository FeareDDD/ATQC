using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp
{
    class Person
    {
        private DateTime BirthDate;
        private string Name;

        public DateTime GetDate {get { return this.BirthDate; } set {BirthDate = value; } }
        public string GetName { get { return this.Name; } }
        

        public Person()
        {
            this.Name = "Roma";
            this.BirthDate = new DateTime(322,12,12); ;
        }

        public Person(string name,DateTime birthDate)
        {
            this.BirthDate = birthDate;
        }

        public void Age()
        {
            var today = DateTime.Today;
            var age = today.Year - this.BirthDate.Year;
            if (today.Month < BirthDate.Month)
                age -= 1;
            Console.WriteLine(age);
        }
        public void Input()
        {
            Console.Write("Person name: ");
            this.Name = Console.ReadLine();
            Console.Write("Person birth date in format year,month,day: ");
            this.BirthDate = Convert.ToDateTime(Console.ReadLine());
        }

        public void Output()
        {
            Console.WriteLine("Person name {0} birth year {1} birth month {2} birth day {3}", this.Name,this.BirthDate.Year,this.BirthDate.Month,this.BirthDate.Day);
        }
        public void ChangeName(string name)
        {
            this.Name = name;
        }

    }
}
