import { MongoClient } from "mongodb";

const url = process.env.MONGODB_STRING;

const mongoClient = new MongoClient(url);

setInterval(() => {
	console.log("Bun still running");
}, 500);
console.log("Connecting...");
await mongoClient.connect();

console.log("It works");
