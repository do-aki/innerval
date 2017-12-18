--TEST--
is_interned_string
--SKIPIF--
<?php if (!extension_loaded("innerval")) print "skip"; ?>
--FILE--
<?php 
var_dump(is_interned_string("HOGE"));
var_dump(is_interned_string(sprintf("%s", "HOGE")));

--EXPECT--
bool(true)
bool(false)
