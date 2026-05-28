require('dotenv').config()

const express = require("express");
const app = express();
const port = process.env.PORT || 5000

app.get("/",(req,res)=>{
    res.json({
        message:"textly server is working"
    })
});

app.listen(port,()=>{
    console.log(`server is listening on ${port}`)
});