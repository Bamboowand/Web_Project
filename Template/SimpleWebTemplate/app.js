const express = require("express");
const app = express();
const ejs = require("ejs");

// // 設定 Mongoose
// const mongoose = require('mongoose');
// mongoose.connect(
//     'mongodb://localhost:27017/test', 
//     {    
//         useNewUrlParser: true, 
//         useUnifiedTopology: true
//     }
// );

// Set middleware
app.use(express.static("public"));

app.get("/", (request, response) => {
    response.render("index.ejs");
});

app.listen(3000, () => {
    console.log("Server is rening on port 3000.");
});