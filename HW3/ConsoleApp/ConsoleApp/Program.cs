using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ConsoleApp
{
    class Program
    {
        enum Color {
            red, blue, green, yellow
        };
        enum HTTPError
        {
            Bad_Request = 400,
            Unauthorized,
            Payment_Required,
            Forbidden,
            Not_Found,
            Method_Not_Allowed,
            Not_Acceptable,
            Proxy_Authentication_Required,
            Request_Timeout,
            Conflict,
            Redirect = 451
        };
        struct Date
        {
            public int day;
            public int month;
            public int year;
        }
        struct Dog
        {
            public string name;
            public string mark;
            public int age;
            public override string ToString()
            {
                string str = "My dog name is " + name + " his mark " + mark + " and age " + age;
                return str;
            }
        }

        static void Main(string[] args)
        {
            MainMenu();
        }

        public static void MainMenu()
        {
            Console.Clear();
            Console.WriteLine("Main Menu:");
            Console.WriteLine("1) Task 1 +");
            Console.WriteLine("2) Task 2 +");
            Console.WriteLine("3) Task 3 +");
            Console.WriteLine("4) Task 4 +");
            Console.WriteLine("5) Task 5 +");
            Console.WriteLine("6) Homework 1 +");
            Console.WriteLine("7) Homework 2 +");
            Console.WriteLine("8) Homework 3");
            Console.WriteLine("Press 1-8 to select task...");
            int tmp = Convert.ToInt32(Console.ReadLine());

            switch (tmp)
            {
                case (1):
                    Console.Clear();
                    MenuTask1();
                    break;
                case (2):
                    Console.Clear();
                    MenuTask2();
                    break;
                case (3):
                    Console.Clear();
                    MenuTask3();
                    break;
                case (4):
                    Console.Clear();
                    MenuTask4();
                    break;
                case (5):
                    Console.Clear();
                    MenuTask5();
                    break;
                case (6):
                    Console.Clear();
                    MenuHomework1();
                    break;
                case (7):
                    Console.Clear();
                    MenuHomework2();
                    break;
                case (8):
                    Console.Clear();
                    PersonClass();
                    break;
                default:
                    Console.WriteLine("Wrong number. Try again? (y/n)");
                    GetToMenu();
                    break;
            }
        }
        public static void MenuTask5()
        {
            cars();
        }
        public static void GetToMenu()
        {
            bool check = false;
            while (!check)
            {
                string status = Console.ReadLine();
                if (status == "y")
                    MainMenu();
                else if (status == "n")
                {
                    check = true;
                    Console.WriteLine("See you!");
                    break;
                }
            }
        }
        
        #region Task 1
        public static void MenuTask1()
        {
            Console.Clear();
            Console.WriteLine("Task 1 Menu:");
            Console.WriteLine("1) Operations");
            Console.WriteLine("2) Question");
            int tmp = Convert.ToInt32(Console.ReadLine());

            switch (tmp)
            {
                case (1):
                    Console.Clear();
                    Operations();
                    break;
                case (2):
                    Console.Clear();
                    HowAreYou();
                    break;
                default:
                    Console.WriteLine("Wrong number. Try again? (y/n)");
                    GetToMenu();
                    break;
            }
        }
        public static void Operations()
        {
            int a, b;
            Console.Write("a = ");
            a = Convert.ToInt32(Console.ReadLine());
            Console.Write("b = ");
            b = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("a + b = {0}", a + b);
            Console.WriteLine("a - b = {0}", a - b);
            Console.WriteLine("a * b = {0}", a * b);
            Console.WriteLine("a / b = {0}", a / b);

            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        public static void HowAreYou()
        {
            string answer;
            Console.WriteLine("How are you?");
            answer = Console.ReadLine();
            Console.WriteLine("You are {0}", answer);
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        #endregion

        #region Task 2
        public static void MenuTask2()
        {
            Console.Clear();
            Console.WriteLine("Task 2 Menu:");
            Console.WriteLine("1) Parity");
            Console.WriteLine("2) Formulas");
            Console.WriteLine("2) Time");
            int tmp = Convert.ToInt32(Console.ReadLine());

            switch (tmp)
            {
                case (1):
                    Console.Clear();
                    Parity();
                    break;
                case (2):
                    Console.Clear();
                    Formulas();
                    break;
                case (3):
                    Console.Clear();
                    Time();
                    break;
                default:
                    Console.WriteLine("Wrong number. Try again? (y/n)");
                    GetToMenu();
                    break;
            }
        }
        public static void Parity()
        {
            int a, b, h, m;
            Console.Write("a = ");
            a = Convert.ToInt32(Console.ReadLine());
            Console.Write("b = ");
            b = Convert.ToInt32(Console.ReadLine());

            if (a % 2 == b % 2)
            {
                Console.WriteLine("True");
            }
            else
            {
                Console.WriteLine("False");
            }
            Console.WriteLine("Return to menu? (y/n)");
            GetToMenu();
        }
        public static void Formulas()
        {
            float r;
            Console.Write("r = ");
            r = Convert.ToSingle(Console.ReadLine());

            Console.WriteLine("Довжина кола = {0}", 2 * Math.PI * r);
            Console.WriteLine("Площа круга = {0}", Math.PI * Math.Pow(r, 2));
            Console.WriteLine("Об'єм кулi = {0}", 4.0 / 3 * Math.PI * Math.Pow(r, 3));
            Console.WriteLine("Return to menu? (y/n)");
            GetToMenu();
        }
        public static void Time()
        {
            int h, m;
            Console.Write("hour = ");
            h = Convert.ToInt32(Console.ReadLine());
            Console.Write("minute = ");
            m = Convert.ToInt32(Console.ReadLine());

            if (h >= 6 && h < 12)
                Console.WriteLine("Доброго ранку!");
            else if (h >= 12 && h < 18)
                Console.WriteLine("Доброго дня!");
            else if (h >= 18 && h < 23 && m <= 59)
                Console.WriteLine("Доброго вечеру!");
            else if (h >= 0 && h < 6)
                Console.WriteLine("Доброї ночi!");
            else
                Console.WriteLine("Година не розпiзнана");
            Console.WriteLine("Return to menu? (y/n)");
            GetToMenu();
        }
        #endregion

        #region Task 3
        public static void MenuTask3()
        {
            Console.Clear();
            Console.WriteLine("Task 3 Menu:");
            Console.WriteLine("1) Colors enum");
            Console.WriteLine("2) Date struct");
            int tmp = Convert.ToInt32(Console.ReadLine());

            switch (tmp)
            {
                case (1):
                    Console.Clear();
                    FavoriteColor();
                    break;
                case (2):
                    Console.Clear();
                    TodayDate();
                    break;
                default:
                    Console.WriteLine("Wrong number. Try again? (y/n)");
                    GetToMenu();
                    break;
            }
        }
        public static void FavoriteColor()
        {
            Color myColor = Color.green;
            Console.WriteLine("My favorite color --> {0}", myColor);
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        public static void TodayDate()
        {
            Date todayDate;
            todayDate.day = DateTime.Today.Day;
            todayDate.month = DateTime.Today.Month;
            todayDate.year = DateTime.Today.Year;
            Console.WriteLine("Today date: {0} {1} {2}", todayDate.day, todayDate.month, todayDate.year);
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        #endregion

        #region Task 4
        public static void MenuTask4()
        {
            Console.Clear();
            Console.WriteLine("Task 4 Menu:");
            Console.WriteLine("1) Remaining from division");
            Console.WriteLine("2) Print every second char");
            Console.WriteLine("3) Drink type");
            Console.WriteLine("4) Arithmetic mean");
            Console.WriteLine("5) A leap year");
            int tmp = Convert.ToInt32(Console.ReadLine());

            switch (tmp)
            {
                case (1):
                    Console.Clear();
                    Division();
                    break;
                case (2):
                    Console.Clear();
                    SecondChar();
                    break;
                case (3):
                    Console.Clear();
                    DrinkType();
                    break;
                case (4):
                    Console.Clear();
                    Arithmetic();
                    break;
                case (5):
                    Console.Clear();
                    LeapYear();
                    break;
                default:
                    Console.WriteLine("Wrong number. Try again? (y/n)");
                    GetToMenu();
                    break;
            }
        }
        public static void Division()
        {
            int a, b;
            Console.Write("a = ");
            a = Convert.ToInt32(Console.ReadLine());
            Console.Write("b = ");
            b = Convert.ToInt32(Console.ReadLine());
            int min = a;
            int max = b; 
            if (a > b)
            {
                min = b;
                max = a;
            }else if(a == b)
            {
                min = a;
                max = a;
            }
            int counter = 0;
            
            for (;min<=max;min++)
            {
                if (min % 3 == 0)
                {
                    counter++;
                    Console.WriteLine(min);
                }
                    
            }
            Console.WriteLine("There are {0} numbers dividind into 3 without remaining", counter);
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        public static void SecondChar()
        {
            Console.WriteLine("Enter smth pls");
            string str = Console.ReadLine();
            string output = "";
            for (int i = 0; i < str.Length; i += 2)
            {
                output += str.Substring(i, 1);
            }
            Console.WriteLine("Output: {0}", output);
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        public static void DrinkType()
        {
            Console.WriteLine("Enter drink type (coffee, tea, juice, water):");
            string str = Console.ReadLine();
            switch (str)
            {
                case ("coffee"):
                    Console.WriteLine("Type: Coffee; Price: 3,22 UAH");
                    break;
                case ("tea"):
                    Console.WriteLine("Type: Tea; Price: 3,22 UAH");
                    break;
                case ("juice"):
                    Console.WriteLine("Type: Juice; Price: 3,22 UAH");
                    break;
                case ("water"):
                    Console.WriteLine("Type: Water; Price: 3,22 UAH");
                    break;
                default:
                    Console.WriteLine("Undefined drink type");
                    break;
            }
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        public static void Arithmetic()
        {
            Console.WriteLine("Enter numbers to first negative number");
            int[] array = new int[] { };
            int i = 0;
            while (true)
            {
                Array.Resize(ref array,array.Length+1);
                int number = Convert.ToInt32(Console.ReadLine());
                array[i] = number;
                if (number < 0)
                    break;
                i++;
            }
            int summ = 0;
            for (int j = 0; j < array.Length; j++)
                summ += array[j];
            int mid = summ / array.Length;
            Console.WriteLine(mid);
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        public static void LeapYear()
        {
            Console.Write("Enter year value: ");
            int year = Convert.ToInt32(Console.ReadLine());

            if(((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0))
                Console.WriteLine("The {0} year is leap year.", year);
            else
                Console.WriteLine("The {0} year is not a leap year.", year);
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        #endregion

        #region Task 5
        public static void cars()
        {
            Car firstCar = new Car();
            Car secondCar = new Car();
            Car thirdCar = new Car();

            firstCar.ChangePrice(10);
            secondCar.ChangePrice(10);
            thirdCar.ChangePrice(10);

            firstCar.Print();
            secondCar.Print();
            thirdCar.Print();

            thirdCar.Color = "white";
            thirdCar.Print();

            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }

        #endregion

        #region Homework 1
        public static void MenuHomework1()
        {
            Console.Clear();
            Console.WriteLine("Menu:");
            Console.WriteLine("1) If numbers belong to the range[-5,5]");
            Console.WriteLine("2) Find min and max");
            Console.WriteLine("3) HTTP Errors enum");
            Console.WriteLine("4) Dog struct");
            Console.WriteLine("Press 1-4 to select task...");
            int tmp = Convert.ToInt32(Console.ReadLine());

            switch (tmp)
            {
                case (1):
                    Console.Clear();
                    RangeBelong();
                    break;
                case (2):
                    Console.Clear();
                    MinMaxValue();
                    break;
                case (3):
                    Console.Clear();
                    Console.Write("Input your error code: ");
                    int code = Convert.ToInt32(Console.ReadLine());
                    ErrorCode(code);
                    break;
                case (4):
                    Console.Clear();
                    DogInfo();
                    break;
                default:
                    Console.WriteLine("Wrong number. Try again? (y/n)");
                    GetToMenu();
                    break;
            }
        }
        public static void ErrorCode(int code)
        {

            HTTPError error;
            if (Enum.IsDefined(typeof(HTTPError), code))
            {
                HTTPError tmp = (HTTPError)code;
                Console.WriteLine("{0}: {1}", code, tmp.ToString());
            }
            else
                Console.WriteLine("Code not found...");

            Console.WriteLine("Return to menu? (y/n)");
            GetToMenu();
        }
        public static void DogInfo()
        {
            Dog myDog;
            Console.Write("Dog name: ");
            myDog.name = Console.ReadLine();
            Console.Write("Dog mark: ");
            myDog.mark = Console.ReadLine();
            Console.Write("Dog age: ");
            myDog.age = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(myDog.ToString());
            Console.WriteLine("Return to menu? (y/n)");
            GetToMenu();
        }
        public static void RangeBelong()
        {
            float[] array = new float[3];
            bool flag = true;

            for (int i = 0; i < array.Length; i++)
            {
                Console.Write(i + 1 + " число = ");
                array[i] = Convert.ToSingle(Console.ReadLine());
                if (array[i] >= -5 && array[i] <= 5)
                {
                    Console.WriteLine("> " + array[i] + " належить проміжку [-5;5]");
                }
                else
                {
                    Console.WriteLine("> " + array[i] + " не належить проміжку [-5;5]");
                    flag = false;
                }
            }
            if (flag)
                Console.WriteLine("Усі три числа належать проміжку [-5;5]");

            Console.WriteLine("Return to menu? (y/n)");
            GetToMenu();
        }
        public static void MinMaxValue()
        {
            int[] array = new int[3];

            for (int i = 0; i < array.Length; i++)
            {
                Console.Write(i + 1 + " число = ");
                array[i] = Convert.ToInt32(Console.ReadLine());
            }
            Console.WriteLine("Max = {0}", array.Max());
            Console.WriteLine("Min = {0}", array.Min());

            Console.WriteLine("Return to menu? (y/n)");
            GetToMenu();
        }
        #endregion
        #region Homework 2
        public static void MenuHomework2()
        {
            Console.Clear();
            Console.WriteLine("Menu:");
            Console.WriteLine("1) a o i e");
            Console.WriteLine("2) Amount of days in month");
            Console.WriteLine("3) 10 int numbers");
            Console.WriteLine("Press 1-3 to select task...");
            int tmp = Convert.ToInt32(Console.ReadLine());

            switch (tmp)
            {
                case (1):
                    Console.Clear();
                    aoie();
                    break;
                case (2):
                    Console.Clear();
                    DaysAmount();
                    break;
                case (3):
                    Console.Clear();
                    TenNumbers();
                    break;
                default:
                    Console.WriteLine("Wrong number. Try again? (y/n)");
                    GetToMenu();
                    break;
            }
        }
        public static void aoie()
        {
            Console.Write("Enter year sting: ");
            string str = Console.ReadLine();
            int amountA = new Regex("a").Matches(str).Count;
            int amountO = new Regex("o").Matches(str).Count;
            int amountI = new Regex("i").Matches(str).Count;
            int amountE = new Regex("e").Matches(str).Count;

            Console.WriteLine("'a' appear {0} times", amountA);
            Console.WriteLine("'o' appear {0} times", amountO);
            Console.WriteLine("'i' appear {0} times", amountI);
            Console.WriteLine("'e' appear {0} times", amountE);

            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        public static void DaysAmount()
        {
            Console.Write("Enter month number (1-12):");
            int month = Convert.ToInt32(Console.ReadLine());
            if (month < 1 || month > 12)
                Console.WriteLine("Wrong month number");
            else
            {
                int days = DateTime.DaysInMonth(DateTime.Today.Year, month);
                Console.WriteLine("{0} month have {1} days",month,days);
            }

            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }
        public static void TenNumbers()
        {
            int i = 0;
            int[] array = new int[10];
            bool flag = false;
            while(i < 10)
            {
                Console.Write("Enter 10 numbers:");
                array[i] = Convert.ToInt32(Console.ReadLine());
                if (array[i] < 0 && i<5)
                    flag = true;
                i++;
            }
            if (!flag)
            {
                int product = 1;
                for (int j = 5; j<array.Length; j++)
                {
                    product = array[j] * product;
                }
                Console.WriteLine("Product = {0}", product);
            }
            else
            {
                int sum = 0;
                for (int j = 0; j < array.Length/2; j++)
                {
                    sum = array[j] + sum;
                }
                Console.WriteLine("Sum = {0}", sum);
            }
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }

        #endregion
        #region Homework 3
        public static void PersonClass()
        {
            Person firstPerson = new Person();
            firstPerson.Input();
            firstPerson.Output();
            firstPerson.ChangeName("Anton");
            firstPerson.Output();
            Console.WriteLine("Return to main menu? (y/n)");
            GetToMenu();
        }

        #endregion
    }
}
