using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LoginRegisterPage
{
    public class User
    {
        string fName, lName, usName, mail, psw;

        public string FName { get => fName; set => fName = value; }
        public string LName { get => lName; set => lName = value; }
        public string UsName { get => usName; set => usName = value; }
        public string Mail { get => mail; set => mail = value; }
        public string Psw { get => psw; set => psw = value; }
    }
}