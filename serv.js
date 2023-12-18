const fs = require('fs');
const express = require('express')
const app = express();
const urlencodedParser = express.urlencoded({ extended: false });
const jsonParser = express.json();
const mysql = require('mysql2');

const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  database: 'vetbd',
  password: 'irina'
});
let currentPerson = {};
app.set("view engine", "ejs");
app.use(express.static('public'))
app.get('/', (req, res) => {
  res.render('index');
})
app.get('/index.html', (req, res) => {
  res.render('index');
})
app.get('/contact.html', (req, res) => {
  res.render('contact');
})
app.get('/doctors.html', (req, res) => {
  res.render('doctors');
})
app.get('/services.html', (req, res) => {
  res.render('services');
})
app.get('/admin', (req, res) => {
  let query = 'SELECT * FROM vetbd.users'
  pool.query(query, function(err,data){
    if (err) return console.log(err);
    res.render('admin', {goods: data});
  }) 
  
})
app.get('/authPage', (req, res) => {
  res.render('auth');
})
app.get('/chart', (req, res) => {
  let query = "select  section.sec_title, count(*) as c from click join services on click.ser_id = services.id join section on section.id = services.sec_id group by sec_title";
  pool.query(query, function (err, data) {
    if (err) return console.log(err);
    res.send(data);
  });
})

app.get('/data', (req, res) => {
  let query = "SELECT * FROM vetbd.services join section where services.sec_id = section.id;";
  pool.query(query, function (err, data) {
    if (err) return console.log(err);
    res.send(data);
  });
})

app.post('/click', jsonParser, (req, res) => {
  if (!req.body) return res.sendStatus(400);
  console.log(req.body);
  let ser_title = req.body.section;
  let time = req.body.time * 0.001;
  let query = `INSERT INTO vetbd.click (ser_id, dat) VALUES ((SELECT id FROM vetbd.services where ser_title = ?), (FROM_UNIXTIME (?) ))`;
  pool.query(query, [ser_title, time], function (err, data) {
    if (err) return console.log(err);
    console.log(data);
    res.send(data);
  });
})
app.get('/user', (req, res) => {
  res.render('user', {goods: currentPerson});
})
app.get('/forgotpass', (req, res) => {
  console.log('forgotpass');
  console.log(req.headers.senddata);
  let query = 'SELECT * FROM vetbd.users where login = ?;'
  pool.query(query, [req.headers.senddata ], function (err, data) {
    if (err) return console.log(err);
    if (data.length == 0) {
      res.sendStatus(403)
    } else {
      res.status = 200;
      let json = JSON.stringify(data[0].password)
      res.send(json)
    }
  })
})
//АВТОРИЗАЦИЯ
app.get('/auth', jsonParser, (req, res) => {
  let user = JSON.parse(req.headers.senddata);
  let query = 'SELECT * FROM vetbd.users where login = ? and password = ?;'
  pool.query(query, [user.login, user.pass], function (err, data) {
    if (err) return console.log(err);
    if (data.length == 0) {
      res.sendStatus(403)
    }
    else {
      console.log(data)
      switch (data[0].role) {
        case '2':
          console.log("admin")
          res.status = 200;
          res.redirect('/admin');
          break;

        case '1':
          console.log('user')
          res.status = 200;
          let good = {
            name: data[0].name,
            secret: data[0].secret
          }
          console.log('user1')
          currentPerson = good;
          res.redirect('/user');
          // res.render('user', {goods: good});
          break;
      }
    }
  });
})
app.post('/password', jsonParser, (req, res) => {
  if (!req.body) return res.sendStatus(400);
  let file = fs.readFileSync("pass.json");
  file = JSON.parse(file);

  if (file.password == req.body.pass) {
    res.send([1]);
  } else res.send([0]);
})

app.listen(3000, () => {
  console.log('Server started: http://localhost:3000');
})



