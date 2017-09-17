import MySQLdb

#########################
#
# just a demo
#
#########################


class TTDB(object):

    def __init__(self, host='localhost', user='root', password='root', db='TT_DB'):
        self.host = host
        self.user = user
        self.password = password
        self.db = db
        self.conn = None
        self.conn = MySQLdb.connect(host, user, password, db)
        self.cur = self.conn.cursor()

    def create_task(self, task_name, task_description):
        sql = "insert into Task values('%s', '%s')" %(task_name, task_description)
        response = self.cur.execute(sql)
        self.conn.commit()
        return response

    def show_task_list(self):
        sql = 'select * from Task'
        self.cur.execute(sql)
        response = self.cur.fetchone()
        return response

    def delete_all_task(self):
        sql = 'delete from Task'
        response = self.cur.execute(sql)
        self.conn.commit()
        return response

    def closeDB(self):
        self.cur.close()
        self.conn.close()
