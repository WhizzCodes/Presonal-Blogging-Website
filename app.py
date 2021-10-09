from flask import Flask, render_template,request,session
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from flask_mail import Mail


from werkzeug.utils import redirect
import pymysql

local_server = True
app=Flask(__name__)

app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = 'guin.preeti.19bsd010@gmail.com',
    MAIL_PASSWORD=  'jbnipfwpitxdtwfe'
)
mail = Mail(app)

app.secret_key = 'super-secret-key'
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://root:@localhost/pythonca2"
db = SQLAlchemy(app)

class Users(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), unique=True, nullable=False)
    password = db.Column(db.String(255), nullable=False)
    date = db.Column(db.String(12), nullable=True)

class Posts(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(255), nullable=False)
    slug = db.Column(db.String(100), unique=True, nullable=False)
    content = db.Column(db.String(255), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    
class Contact(db.Model):
    '''
    id, name, email, msg, date
    '''
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), unique=True, nullable=False)
    msg = db.Column(db.String(255), nullable=False)
    date = db.Column(db.String(12), nullable=True)

@app.route('/')
def home():
    app.route('/')
    posts = Posts.query.filter_by().all()[0:5]
    return render_template("home.html",posts=posts)

@app.route('/signup/', methods = ['GET', 'POST'] )
def signup():

     if(request.method=='POST'):
         name = request.form.get('name')
         email = request.form.get('email')
         password = request.form.get('psw')
         cpassword = request.form.get('cpsw')

         if(password==cpassword):
             entry = Users(name=name, email = email, password = password,date= datetime.now())
             db.session.add(entry)
             db.session.commit()
         else:
             print("Data Inserted unsuccessfully")

        
     return render_template("signup.html")
   

@app.route('/about/')
def about():
    return render_template("about.html")

# @app.route('/contact/')
# def contact():
#     return render_template("contact.html")


    
@app.route('/contact/', methods = ['GET', 'POST'] )
def contact():

     if(request.method=='POST'):
         name = request.form.get('name')
         email = request.form.get('email')
         content = request.form.get('content')         
         entry = Contact(name=name, email = email, msg=content,date= datetime.now())       
         db.session.add(entry)
         db.session.commit()
         mail.send_message('New message from ' + name,
                          sender=email,
                          recipients = ['guin.preeti.19bsd010@gmail.com'],
                          body = content 
                          )
         
        
     return render_template("contact.html")

@app.route('/blogs/<string:post_slug>',methods=['GET'])
def blogs_route(post_slug):
    post=Posts.query.filter_by(slug=post_slug).first()

    return render_template("blogs.html",post=post)

@app.route('/dashboard/', methods=['GET','POST'])
def dashboard():
    if "user" in session and session['user']=='preeti':
        posts=Posts.query.all()
        return render_template("dashboard.html",posts=posts)

    if (request.method=="POST"):
        username=request.form.get('username')
        password = request.form.get('password')
        if(username=="preeti" and password=="guin"):
            session['user']=username
            posts=Posts.query.all()
            return render_template("dashboard.html",posts=posts)
        else:
            return render_template("login.html")
    return render_template("login.html")

@app.route('/edit/<string:id>',methods=['GET','POST'])
def edit(id):
    if "user" in session and session['user']=='preeti':
        if (request.method=="POST"):
            box_title=request.form.get('title')
            box_slug=request.form.get('slug')
            box_content=request.form.get('content')

            if(id=='0'):
                post=Posts(title=box_title,slug=box_title,content=box_content,date= datetime.now())
                db.session.add(post)
                db.session.commit()
            else:
                post=Posts.query.filter_by(id=id).first()
                post.title=box_title
                post.slug=box_slug
                post.content=box_content
                db.session.commit()
                return redirect('/edit/'+id)
        post=Posts.query.filter_by(id=id).first()
        return render_template("edit.html",id=id,post=post)  

@app.route('/delete/<string:id>',methods=['GET','POST'])
def delete(id):
    if "user" in session and session['user']=='preeti':
        post=Posts.query.filter_by(id=id).first()
        db.session.delete(post)
        db.session.commit()
    return redirect('/dashboard')
    
@app.route('/logout/')
def logout():
    session.clear()
    return render_template("login.html")
                

if __name__=="__main__":
    app.run(debug=True)