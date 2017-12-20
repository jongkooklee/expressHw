var mysql = require("mysql");
var inquirer = require("inquirer");
var connection = mysql.createConnection({
    host: "localhost",
    port: 3307,
    user: "root",
    password: "root",
    database: "bamazonDB"
});

connection.connect(function (err) {
    if (err) throw err;
    connection.query("SELECT * FROM products", function (err, res) {
        console.log("ID | PRODUCT | DEPARTMENT | PRICE | STOCK |");
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].id + " | " + res[i].product_name + " | " + res[i].department_name + " | " + res[i].price + " | " + res[i].stock_quantity);
        }
        console.log("-----------------------------------");
    });
    purchase();

});

function purchase() {
    inquirer
        .prompt([{
            name: "id",
            type: "input",
            message: "What is the ID of the product you would like to buy?"
        },
        {
            name: "units",
            type: "input",
            message: "How many units would you like to buy?"
        }]
        )
        .then(function (answer) {
            connection.query("SELECT" + answer.id + "FROM products", function (err, res) {
                if (answer.units < res.stock_quantity) {
                    connection.query("UPDATE products SET stock_quantity="
                        + res.stock_quantity - answer.units + "WHERE id =" answer.id, function (err, res) {
                        }
                    //console.log purchased and show the updated list.
            } else if (answer.units > res.stock_quantity) {
                    console.log("We do not have enough in stock!");
                }
            };
        }