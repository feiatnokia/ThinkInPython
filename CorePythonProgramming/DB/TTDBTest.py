import unittest
import TTDB


class DBTest(unittest.TestCase):

    def setUp(self):
        self.mysql = TTDB.TTDB()

    def tearDown(self):
        self.mysql.closeDB()

    def test_create_task(self):
        self.assertEqual(1, self.mysql.create_task('sprint planning', 'sprint 17092'))

    def test_show_task(self):
        self.test_create_task()
        self.assertEqual(('sprint planning', 'sprint 17092'),self.mysql.show_task_list())

    def test_delete_all_task(self):
        self.assertIn(self.mysql.delete_all_task(), (0, 1, 2))


if __name__ == '__main__':
    unittest.main()
