<?php
$old=imagecreatefrompng("H:/icon/12.png");
imagesavealpha($old,true);
imagetruecolortopalette($old, true, 3);
$r=imagecolorclosestalpha($old,51,51,51,127);


var_dump($r);
imagecolorset($old,$r,'0','0','223');
imagesavealpha($old,true);
$r=imagepng($old,'H:/test/ok.png');
var_dump($r);
?>