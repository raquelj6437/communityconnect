require 'sqlite3'

db.execute "CREATE TABLE IF NOT EXISTS user_timesheet(company TEXT, date TEXT, hours TEXT, signature TEXT)"

def add(db,organization,date,hours,signature)
    db.execute "INSERT INTO user_timesheet(company, date, hours, signature) VALUES (?,?,?,?)", organization,date,hours,signature
end
    
# add(db,"nbc","04/22/18","5","jessica sanchez")
#     rescue SQLite3::Exception => e 
#         puts "Exception occurred"
#         puts e
#     ensure
#         db.close if db
# end
