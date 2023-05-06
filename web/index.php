<?php

function saveEvent($eventName, $userStatus)
{
    // supporting info
    $timestamp = time();
    $datetime = date("Y-m-d H:i:s", $timestamp);
    $userIP = $_SERVER['REMOTE_ADDR'];

    $connect = mysqli_connect('localhost', 'root', '', 'techno_test_db');
    $sql = "INSERT INTO events (event_name, user_status, timestamp, user_ip) VALUES ('$eventName', '$userStatus', '$datetime', '$userIP')";

    // do query
    if (mysqli_query($connect, $sql)) {
        return true;
    } else {
        return false;
    }
}

function getStatistics($eventName, $startDate, $endDate, $aggregation)
{
    $connect = mysqli_connect('localhost', 'root', '', 'techno_test_db');

    if ($aggregation == 'event') {
        $sql = "SELECT COUNT(*) as count FROM events WHERE event_name='$eventName' AND timestamp >= '$startDate' AND timestamp <= '$endDate'";
    } elseif ($aggregation == 'user') {
        $sql = "SELECT COUNT(DISTINCT user_ip) as count FROM events WHERE event_name='$eventName' AND timestamp >= '$startDate' AND timestamp <= '$endDate'";
    } elseif ($aggregation == 'status') {
        $sql = "SELECT COUNT(*) as count FROM events WHERE event_name='$eventName' AND user_status='authorized' AND timestamp >= '$startDate' AND timestamp <= '$endDate'";
    }

    // do query
    $result = mysqli_query($connect, $sql);

    // convert result to json
    $row = mysqli_fetch_assoc($result);
    $jsonResult = json_encode($row);

    return $jsonResult;
}

// test

saveEvent("login", "authorized");

$statistics = getStatistics("login", "2023-05-06", "2023-05-06", "user");
echo $statistics;

$statistics = getStatistics("signup", "2023-05-06", "2023-05-06", "status");
echo $statistics;
