<?php

/**
 * 保存配置到文件
 * 
 * @param type $file 配置文件的名字，不包含.php
 * @param type $data 需要保存的配置，以一维数组的形式传递，
 * @return type 返回是否成功
 */
function saveconfig($file, $data) {

	$config = include CONF_PATH . $file . '.php';
	$config = array_merge($config, $data);
	$content = "<?php\n//这里是配置文件\n\t//'配置项'=>'配置值'\n";
	foreach ($config as $key => $value) {
		$content .= '\t' . $key . '=>' . $value . '\r\n';
	}
	$content .= ");\r\n?>";
	$r = file_put_contents(CONF_PATH . $file . '.php', $content);
	return $r;
}

/**
 * 检查注册登录数据是否合法（正则验证）
 * @todo 正则验证找个合适的位置，暂时定在这里
 * @param type $data
 * @return boolean
 */
function check($data) {
	$validate = array(
		'email' => '/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/',
		'password' => '/^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{5,22}$/',
	);
	// 检查是否有内置的正则表达式
	foreach ($data as $key => $value) {
		if (!$validate[$key])//没有默认正则的不过滤
			continue;
		if (!(preg_match($validate[$key], $value) === 1))
			return FALSE;
	}
	return TRUE;
}

?>