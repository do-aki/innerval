--TEST--
is_permanent_string
--SKIPIF--
<?php if (!extension_loaded("innerval")) print "skip"; ?>
--FILE--
<?php 
var_dump(is_permanent_string("A"));
var_dump(is_permanent_string(sprintf("%s", "HOGE")));

--EXPECT--
bool(true)
bool(false)
