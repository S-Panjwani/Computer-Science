<?php
// Code comments.

// make an empty array
$queue = array();

// php has cool stuff, array_push, and array_shift
array_push($queue, "first");
array_push($queue, "second");


print_r($queue); // Can print all at once, 10x easier than lua.
?>