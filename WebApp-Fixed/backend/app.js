const express = require('express')
const bodyParser = require('body-parser')
const morgan = require('morgan')
const session = require('express-session')
var app = express()

// Route requires

const post = require('./routes/post')

const file_path = '/Users/macz/Desktop/4ano/LEI/WebApp-Fixed/backend/files'
var cors = require('cors')


app.use(cors());

// MIDDLEWARE
app.use(morgan('dev'))
app.use(
	bodyParser.urlencoded({
		extended: false
	})
)
app.use(bodyParser.json())


// Routes
app.use('/api/posts',post)
app.use('/files', express.static(file_path));
module.exports = app;