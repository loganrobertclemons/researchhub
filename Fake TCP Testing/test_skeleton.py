#!/usr/bin/env python
#
#  code to create a fake TCP server which you can provide a script to emulate certain send/receive/hangup behavior
#
#===============

raise NotImplementedError(
        'To customize, remove this line and customize where it says XXX')

import unittest

import os
import sys
sys.path.append('..')      # XXX Probably needed to import your code


class test_XXX_Test_Group_Name(unittest.TestCase):
    def setUp(self):
        ###  XXX code to do setup
        pass

    def tearDown(self):
        ###  XXX code to do tear down
        pass

    def test_XXX_Test_Name(self):
        raise NotImplementedError('Insert test code here.')
        #  Examples:
        # self.assertEqual(fp.readline(), 'This is a test')
        # self.assertFalse(os.path.exists('a'))
        # self.assertTrue(os.path.exists('a'))
        # self.assertTrue('already a backup server' in c.stderr)
        # self.assertIn('fun', 'disfunctional')
        # self.assertNotIn('crazy', 'disfunctional')
        # with self.assertRaises(Exception):
        #	raise Exception('test')
        #
        # Unconditionally fail, for example in a try block that should raise
        # self.fail('Exception was not raised')

    @unittest.skipIf('SKIP_SLOW_TESTS' in os.environ, 'Requested fast tests')
    def test_XXX_Slow_Test_Name(self):
        raise NotImplementedError('Insert test code here.')

unittest.main()
