# require 'sqlite3'

# begin
    
#     db = SQLite3::Database.open 'timesheet.db'
#     db.execute "CREATE TABLE IF NOT EXISTS user_timesheet(company TEXT, date TEXT, hours INT, signature TEXT)"
#     db.execute 'INSERT INTO user_timesheet(company, date, hours, signature) VALUES ("google", "03/22", 5 ,"Raquel Joseph")'
#     db.execute 'INSERT INTO user_timesheet(company, date, hours, signature) VALUES ("google", "03/22", 5 ,"Raquel Joseph")'
#     db.execute 'INSERT INTO user_timesheet(company, date, hours, signature) VALUES ("google", "03/22", 5 ,"Raquel Joseph")'
#     db.execute 'INSERT INTO user_timesheet(company, date, hours, signature) VALUES ("google", "03/22", 5 ,"Raquel Joseph")'
#     db.execute 'INSERT INTO user_timesheet(company, date, hours, signature) VALUES ("google", "03/22", 5 ,"Raquel Joseph")'
#     db.execute 'INSERT INTO user_timesheet(company, date, hours, signature) VALUES ("google", "03/22", 5 ,"Raquel Joseph")'
    
#     rescue SQLite3::Exception => e 
#         puts "Exception occurred"
#         puts e
#     ensure
#         db.close if db
# end
