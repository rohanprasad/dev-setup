const server = require("express")();
const PORT = 3000;

server.get('/', (req, res) => res.send("Works inside container!!"));

server.listen(PORT, ()=> {
    console.log(`Listening on ${PORT}`);
});