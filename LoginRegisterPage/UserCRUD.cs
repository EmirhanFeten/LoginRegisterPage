using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LoginRegisterPage
{
    public class UserCRUD
    {
        Db db = new Db();
        public bool addUser(User gUser)
        {
            int ksay;
            bool answr = true;
            db.open();
            SqlCommand command = new SqlCommand("insert into registertbl values(@a,@b,@c,@d,@e)",db.connection);
            command.Parameters.AddWithValue("@a", gUser.FName);
            command.Parameters.AddWithValue("@b", gUser.LName);
            command.Parameters.AddWithValue("@c", gUser.UsName);
            command.Parameters.AddWithValue("@d", gUser.Mail);
            command.Parameters.AddWithValue("@e", gUser.Psw);
            ksay=command.ExecuteNonQuery();
            if (ksay==0)
            {
                answr = false;
            }            
            db.close();
            return answr;
        }
       
        public bool list(string p1, string p2)
        {
            bool cevap = true;
            db.open();
            SqlCommand komut = new SqlCommand("select count(usName) from registertbl where usName=@a and psw=@b", db.connection);
            komut.Parameters.AddWithValue("@a", p1);
            komut.Parameters.AddWithValue("@b", p2);
            int kaysay = Convert.ToInt16(komut.ExecuteScalar());
            if (kaysay == 0)
            {
                cevap = false;
            }
            db.close();
            return cevap;
        }
        public bool listRegister(string p1, string p2)
        {
            bool cevap = true;
            db.open();
            SqlCommand komut = new SqlCommand("select count(usName) from registertbl where usName=@a or mail=@b", db.connection);
            komut.Parameters.AddWithValue("@a", p1);
            komut.Parameters.AddWithValue("@b", p2);
            int kaysay = Convert.ToInt16(komut.ExecuteScalar());
            if (kaysay == 0)
            {
                cevap = false;
            }
            db.close();
            return cevap;
        }
    }
}