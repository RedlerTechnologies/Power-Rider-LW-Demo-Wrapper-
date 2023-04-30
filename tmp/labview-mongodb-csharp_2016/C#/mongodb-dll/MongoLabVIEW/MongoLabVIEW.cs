// LabVIEW MongoDB DLL Wrapper
// Copyright 2017 High Temperature Process Diagnostics Research Group

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices.WindowsRuntime;

using MongoDB.Driver;
using MongoDB.Bson;

namespace MongoLabVIEW
{
    public class MLVClient
    {
        // Private data to store MongoDB client object
        private MongoClient client;

        public MLVClient(string connectionString)
        {
            // Establishes connection to server and database
            // CMD: var client = new MongoClient("mongodb://localhost:27017");
            // CMD: public MongoClient(string connectionString);
            client = new MongoClient(connectionString);
        }

        public string[] ListDatabases()
        {
            // List available databases on server
            // CMD: public override sealed IAsyncCursor<BsonDocument> ListDatabases(CancellationToken cancellationToken = null)
            // CMD: List<String> databases = client.ListDatabases();
            List<string> databasesList = new List<string>() { };
            var resultsCursor = client.ListDatabases();
            foreach (var database in resultsCursor.ToEnumerable())
            {
                databasesList.Add(database.ToString());
                // For Debug
                // Console.WriteLine(database.ToString());
            }
            string[] databasesArray = databasesList.ToArray();
            return databasesArray;
        }

        public MLVDatabase GetDatabase(string databaseName)
        {
            // Select database on server for further commands
            // CMD: var database = client.GetDatabase("foo");
            // CMD: public override sealed IMongoDatabase GetDatabase(string name,MongoDatabaseSettings settings = null)
            IMongoDatabase databaseMongo = client.GetDatabase(databaseName);
            MLVDatabase databaseLV = new MLVDatabase(databaseMongo);
            return databaseLV;
        }

    }

    public class MLVDatabase
    {
        // Private data to store MongoDB database object
        private IMongoDatabase database;
        // For IMongoDatabase specific info, see http://mongodb.github.io/mongo-csharp-driver/2.4/apidocs/html/Methods_T_MongoDB_Driver_IMongoDatabase.htm

        public MLVDatabase(IMongoDatabase databaseMongo)
        {
            // Constructor
            // Stores IMongoDatabase in private data of MLVDatabase object
            database = databaseMongo;
        }

        public string[] ListCollections()
        {
            // List collections in currently selected database
            // CMD: IAsyncCursor<BsonDocument> ListCollections(ListCollectionsOptions options = null,CancellationToken cancellationToken = null)
            List<string> collectionsList = new List<string>() { };
            var resultsCursor = database.ListCollections();
            foreach (var collection in resultsCursor.ToEnumerable())
            {
                collectionsList.Add(collection.ToString());
                // For Debug
                // Console.WriteLine(collection.ToString());
            }
            string[] collectionsArray = collectionsList.ToArray();
            return collectionsArray;
        }

        public MLVCollection GetCollection(string collectionName)
        {
            // Selects specific collection within database
            // CMD: var collection = database.GetCollection<BsonDocument>(collectionName);
            IMongoCollection<BsonDocument> collectionMongo = database.GetCollection<BsonDocument>(collectionName);
            MLVCollection collectionLV = new MLVCollection(collectionMongo);
            return collectionLV;
        }

    }

    public class MLVCollection
    {
        // Private data to store MongoDB collection object
        private IMongoCollection<BsonDocument> collection;
        // For IMongoCollection specific info, see http://mongodb.github.io/mongo-csharp-driver/2.4/apidocs/html/T_MongoDB_Driver_IMongoCollection_1.htm

        public MLVCollection(IMongoCollection<BsonDocument> collectionMongo)
        {
            // Constructor
            // Stores obtain collection in private data of MLVCollection object
            collection = collectionMongo;
        }

        public long GetNumberOfDocs()
        {
            // Returns the number of documents in collection in database
            FilterDefinition<BsonDocument> filter = FilterDefinition<BsonDocument>.Empty; // Empty filter = count all docs !!
            return collection.Count(filter);
        }

        public string[] Find(string selectionString, string filterString, string sortString, int limitInteger)
        {
            // Find docs according to filter specification
            List<string> docsList = new List<string>() { };
            var resultsCursor = collection.Find(filterString).Sort(sortString).Limit(limitInteger).Project(selectionString);
            foreach (var doc in resultsCursor.ToEnumerable())
            {
                docsList.Add(doc.ToString());
            }

            string[] docsArray = docsList.ToArray();
            return docsArray;
        }

        public void InsertOne(string JSONString)
        {
            // Inserts one document, which is provided as a JSON string from the caller
            BsonDocument ToBeInserted = BsonDocument.Parse(JSONString);
            collection.InsertOne(ToBeInserted);
        }

    }

}
