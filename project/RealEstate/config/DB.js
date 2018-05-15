const mysql = require('mysql');
var connection = null; // a global variable

class Database {
    constructor() {
        if (connection == null) {
            connection = mysql.createConnection({
                host: "localhost",
                user: "root",
                password: "",
                database: "db_realestate"
            });
            this.connection = connection;
        }
        else {
            this.connection = connection;
        }
    }

    // query a SELECT string
    queryMySQL(sql, args = "") {
        return new Promise((resolve, reject) => {
            this.connection.query(sql, args, (err, rows) => {
                if (err)
                    return reject(err);
                resolve(rows);
            });
        });
    }
    
    // Execute a sql string such as INSERT, UPDATE, DELETE, ...
    executeMySQL(sql, args = "") {
        return new Promise((resolve, reject) => {
            this.connection.query(sql, args, (err, rows) => {
                if (err)
                    return reject(err);
                if (rows.affectedRows > 0)
                    resolve(true);
                else
                    resolve(false);
            });
        });
    }

    // Close this session
    closeMySQL() {
        return new Promise((resolve, reject) => {
            this.connection.end(err => {
                if (err)
                    return reject(err);
                resolve();
            });
        });
    }
}

module.exports = Database;