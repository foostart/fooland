const mysql = require('mysql');
var connection = null;

class Database {
    constructor() {
        if (connection == null)
        {
            connection = mysql.createConnection({
                host: "localhost",
                user: "root",
                password: "vertrigo",
                database: "db_realestate"
            });
            this.connection = connection;
        }
        else {
            this.connection = connection;
        }
    }

    queryMySQL(sql, args = "") {
        return new Promise( ( resolve, reject ) => {
            this.connection.query( sql, args, ( err, rows ) => {
                if ( err )
                    return reject( err );
                resolve( rows );
            } );
        } );
    }

    executeMySQL(sql, args = "") {
        return new Promise( ( resolve, reject ) => {
            this.connection.query( sql, args, ( err, rows ) => {
                if ( err )
                    return reject(err);
                resolve(true);
            } );
        } );
    }

    closeMySQL() {
        return new Promise( ( resolve, reject ) => {
            this.connection.end( err => {
                if ( err )
                    return reject( err );
                resolve();
            } );
        } );
    }
}

module.exports = Database;