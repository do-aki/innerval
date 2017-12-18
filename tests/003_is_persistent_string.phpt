--TEST--
is_persistent_string
--SKIPIF--
<?php if (!extension_loaded("innerval")) print "skip"; ?>
--FILE--
<?php 
var_dump(is_persistent_string("A"));
var_dump(is_persistent_string("HOGE"));

--EXPECT--
bool(true)
bool(false)
