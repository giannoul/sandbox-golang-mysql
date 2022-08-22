package mysqlconn

import (
	"database/sql"
	"log"
	_ "github.com/go-sql-driver/mysql"
)

func Getversion(){
	db, err := sql.Open("mysql", "root:hahaha@tcp(mysql:3306)/myexample")
    defer db.Close()

    if err != nil {
        log.Fatal(err)
    }

    var version string

    err2 := db.QueryRow("SELECT VERSION()").Scan(&version)

    if err2 != nil {
        log.Fatal(err2)
    }
	log.Println(version)
}