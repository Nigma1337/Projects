using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using NigmaTriesThing.Models;
using MySql.Data.MySqlClient;
using NigmaTriesThing.hash;

namespace NigmaTriesThing.Controllers
{
    
    public class HomeController : Controller
    {
        public static void cum() {
            MySql.Data.MySqlClient.MySqlConnection conn;
            string myConnectionString = "Server=localhost;Database=passwords;Uid=root;Pwd=NotGoingOnGithub";
            conn = new MySql.Data.MySqlClient.MySqlConnection();
            conn.ConnectionString = myConnectionString;
            conn.Open();
            MySql.Data.MySqlClient.MySqlCommand cmd;
            cmd = new MySql.Data.MySqlClient.MySqlCommand();
            cmd.Connection = conn;
            string sql = "INSERT INTO passwords VALUES(@text, @date)";
            cmd.CommandText = sql;
            cmd.Prepare();

            cmd.Parameters.AddWithValue("@text", "fortnite");
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            cmd.ExecuteNonQuery();
            
            conn.Close();

        }
        public static int lmao(int a)
        {
            return a+2;
        }

        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        public static string fortnite = Shabois.sha256_hash("cum");
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
