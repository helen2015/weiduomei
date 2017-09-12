<?php
header("Content-Type:application/json;charset=utf-8");
require("init.php");
@$tid=$_REQUEST["tid"] or die('{"msg":"编号是必须的"}');
$sql="SELECT * FROM cake WHERE tid=$tid";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows,JSON_UNESCAPED_UNICODE);

?>