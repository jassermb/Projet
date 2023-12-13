const express = require("express");
const exphbs = require("express-handlebars");
const app = express();
const port = 3000;
const path = require('path');
const mysql = require('mysql');

app.engine('handlebars', exphbs.engine({ defaultLayout: 'body' }));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'newss'
});

connection.connect();

 // Format dates 
app.use((req, res, next) => {
  connection.query("SELECT * FROM actualites ORDER BY date_publication DESC", (error, results) => {
    if (error) throw error;   
    results = results.map(result => {
      return {
        ...result,
        formattedDate: new Date(result.date_publication).toLocaleDateString('fr-FR', {
          weekday: 'long',
          year: 'numeric',
          month: 'long',
          day: 'numeric'
        })
      };
    });

    res.locals.actualites = results;
    next();
  });
});

app.get("/", (req, res) => {
  res.render('index', { body: 'main' });
});

app.get("/addnews", function(req, res) {
  var thetitle = req.query.titre;
  var thedesc = req.query.description;
  var sql = "INSERT INTO actualites (titre, description) VALUES (?, ?)";
  
  connection.query(sql, [thetitle, thedesc], function(error, results, fields) {
    if (error) throw error;
    res.redirect('/');
  });
});

app.get("/add", (req, res) => {
  res.sendFile(path.join(__dirname, "views/add.html"));
});

app.listen(port, () => {
  console.log(`Server is running on port : ${port}`);
});
