from flask import Flask, redirect, render_template, request
import mysql.connector
import datetime

application = Flask(__name__)


@application.route("/")
def index():
    return render_template("index.html")


@application.route("/check", methods=["POST"])
def check():
    password = request.form.get("password")
    username = request.form.get("username")

    x = datetime.datetime.now()
    mydb = mysql.connector.connect(
        host="database-1.ckibzlbolaru.eu-north-1.rds.amazonaws.com",
        user="admin",
        passwd="NotGoingOnGithub",
        database="database-1"
    )

    mycursor = mydb.cursor(prepared=True)
    sql = "SELECT UserName FROM logins WHERE UserName=?"
    mycursor.execute(sql, (username,))
    if not mycursor.fetchone():
        sql = "INSERT INTO logins (username, password) VALUES (%s, %s)"
        val = (username, password)
        mycursor.execute(sql, val)
        mydb.commit()
        print(mycursor.rowcount, "record inserted.")
        return render_template("index.html", security="Account created")
    else:
        return render_template('welcome.html')


if __name__ == "__main__":
    # Setting debug to True enables debug output. This line should be
    # removed before deploying a production app.
    application.debug = True
    application.run()
