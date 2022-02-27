const express = require('express')
const app = express()
const port = 3001

const accountSid = 'AC67304e23e5c4bbcc77199804eed417cf'; // Your Account SID from www.twilio.com/console
const authToken = 'e4a21044af9fcc26f7311b04d3663984'; // Your Auth Token from www.twilio.com/console

const twilio = require('twilio');
const client = new twilio(accountSid, authToken);

app.get('/sendmessage/:num', (req, res) => {
  console.log(req.params)
    number = req.params.num
    console.log("THE NUMBER WE WILL SEND IT TO IS:" + "+1" + number)
    client.messages
    .create({
      body: 'Your Laundry is done!',
      to: '+1' + number, // Text this number
      from: '+18597192285', // From a valid Twilio number
    })
    .then((message) => console.log(message.sid))
  res.send('hi')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})