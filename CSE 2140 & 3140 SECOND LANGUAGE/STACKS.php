<?php
// woah
$refresh = true;

$stack = array();

// add 3 items
array_push($stack, "first");
array_push($stack, "second");
array_push($stack, "third");

while ($refresh) {
    $top = end($stack);  

    echo "Top: " . $top . "\n";

    array_pop($stack);

    if (empty($stack)) {
        $refresh = false;  // stop the loop when stack is empty
    }
}
?>
