const express = require('express')
const router = express.Router()
const file = require('../helpers/file')
const multer = require('multer')
const fs = require('fs')
const dir = 'http://localhost:3011/'
const file_path = '/Users/macz/Desktop/4ano/LEI/WebApp-Fixed/backend/'

/* Adicionar post */
router.post('/', upload.array('json',1) , (req, res) =>{
    var date_in = Date.now()
    let others = []
    let images = []
    let student 
    console.log(req.body.owner)
    req.files.forEach(element => {
        if(file.checkFile(element.originalname)){ 
            images.push(dir + element.path)
        }else{
            others.push(dir + element.path)
        }
        console.log(dir + element.path)
        let rawdata = fs.readFileSync(file_path + element.path);
        student = JSON.parse(rawdata);
        console.log(student);
        
    });
    res.send(student)
})


module.exports = router