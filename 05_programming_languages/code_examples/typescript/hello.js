var Greeting;
(function (Greeting) {
    Greeting["World"] = "world";
    Greeting["Universe"] = "universe";
    Greeting["Galaxy"] = "galaxy";
    Greeting["Cosmos"] = "cosmos";
})(Greeting || (Greeting = {}));
console.log("Hello ".concat(Greeting.World, "!"));
console.log("Hello ".concat(Greeting.Universe, "!"));
console.log("Hello ".concat(Greeting.Galaxy, "!"));
console.log("Hello ".concat(Greeting.Cosmos, "!"));
