from flask import Flask,render_template,request
from flask_sqlalchemy import SQLAlchemy
import json

with open('config.json','r') as c:
    params=json.load(c)["params"]

app = Flask(__name__)
local_server=True
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['pri_uri']

db = SQLAlchemy(app)

class Contact(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    phoneNo = db.Column(db.String(12), nullable=False)
    email = db.Column(db.String(30), nullable=False)
    message = db.Column(db.String(80), nullable=False)
    
class Booking(db.Model):
    c_id = db.Column(db.Integer, primary_key=True)
    Arrive_date= db.Column(db.String(80), nullable=False)
    Depature_date = db.Column(db.String(12), nullable=False)
    Rooms= db.Column(db.Integer, nullable=False)
    Guests= db.Column(db.Integer, nullable=False)
    Email = db.Column(db.String(30), nullable=False)
    Message = db.Column(db.String(80), nullable=False)



@app.route("/")
def index():
    return render_template('index.html',params=params)

@app.route("/about")
def about():
    return render_template('about.html',params=params)

@app.route("/blog")
def blog():
    return render_template('blog.html',params=params)

@app.route("/booknow",methods=['GET','POST'])
def booknow():
    if(request.method=='POST'):
        ad=request.form.get('ad')
        dd=request.form.get('dd')
        rm =request.form.get('rm')
        gt =request.form.get('gt')
        email =request.form.get('email')
        msg =request.form.get('msg')
        entry= Booking(Arrive_date=ad,Depature_date=dd,Rooms=rm,Guests=gt,Email=email,Message=msg)
        db.session.add(entry)
        db.session.commit()
    return render_template('booknow.html',params=params)

@app.route("/contact",methods=['GET','POST'])
def contact():
    if(request.method=='POST'):
        name=request.form.get('name')
        pn=request.form.get('pn')
        email =request.form.get('email')
        msg =request.form.get('message')
        entry= Contact(name=name,phoneNo=pn,email=email,message=msg)
        db.session.add(entry)
        db.session.commit()
    return render_template('contact.html',params=params)

@app.route("/rooms")
def rooms():
    return render_template('rooms.html',params=params)

@app.route("/bs")
def bs():
    return render_template('blog-single.html',params=params)

app.run(debug=True)
