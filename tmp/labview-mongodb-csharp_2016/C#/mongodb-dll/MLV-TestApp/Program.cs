using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using MongoLabVIEW;

namespace MLV_TestApp
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Test application for MongoDB LabVIEW wrapper DLL");
            Console.WriteLine("All following commands are executed as method calls of the DLL");

            Console.WriteLine("Connectiong to MongoDB server...");
            // Open connection to MongoDB server
            var MLV_Client = new MongoLabVIEW.MLVClient("mongodb://tulpe:27017");

            Console.WriteLine("Getting list of databases on server...");
            // Get list of available collections in specific database
            string[] databases = MLV_Client.ListDatabases();
            databases.ToList().ForEach(Console.WriteLine);

            Console.WriteLine("Selecting database...");
            // Select database
            var MLV_Database = MLV_Client.GetDatabase("labview_tests");
            // MLV_Client.GetDatabase("hitran");

            Console.WriteLine("Getting list of collections in specified database...");
            // Get list of available collections in specific database
            string[] collections = MLV_Database.ListCollections();
            collections.ToList().ForEach(Console.WriteLine);

            Console.WriteLine("Selecting collection...");
            // Select collection in database
            var MLV_Collection = MLV_Database.GetCollection("labview_2");
            // MLV_Client.GetCollection("hitran_2012");

            Console.WriteLine("Getting number of docs in database (no filter)...");
            // Get total number of docs in collection with applying any filter
            long numberOfDocs = MLV_Collection.GetNumberOfDocs();
            Console.WriteLine(numberOfDocs.ToString());

            // Console.WriteLine("Finding transistions...");
            // Get list of available collections in specific database
            // var filterString = "{ trans_nu: 7294.12308}";
            // Prepare Find command
            // string selectionString = "{ _id: false }"; // Called "Projection" in MongoDB docu
            // string filterString = "{ trans_nu: { $gte: 7246, $lte: 7352 }, trans_molec_id: 1 }";
            // string sortString = "{param_intensity_weighted_abundace: -1}";
            // int limitInteger = 5;

            // int count = 0;
            // string[] docs = MLV_Collection.Find(selectionString, filterString, sortString, limitInteger);
            // docs.ToList().ForEach(doc => {
            // Console.WriteLine($"Counter: {count}, content: {doc}");
            // count++;
            // });

            // Test insert into collection with examplary JSON string
            MLV_Collection.InsertOne("{test: 1, test2: [1,2,3,4,56]}");

            // Waits for key input and therefore holds open console to read output(s)
            Console.ReadKey(true);
        }
    }
}
