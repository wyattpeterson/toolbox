import unittest

class SomeTest(unittest.TestCase):

    def setUp(self):
        pass

    def test_something(self):
        self.assertEqual(True, True)


if __name__ == '__main__':
    unittest.main()
