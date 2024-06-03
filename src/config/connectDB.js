const { Sequelize } = require("sequelize");
require("dotenv").config();
const sequelize = new Sequelize(
  "railway",
  "root",
  "JtbDNtbFUBeYBfpgWnkhmFEEapWmQqlr",
  {
    host: "viaduct.proxy.rlwy.net",
    port: "56581",
    dialect: "mysql",
  }
);
const connection = async () => {
  try {
    await sequelize.authenticate();
    console.log("Connection has been established successfully.");
  } catch (error) {
    console.error("Unable to connect to the database:", error);
  }
};

module.exports = { connection, sequelize };
