<?php
return array(
	//'配置项'=>'配置值'
	
	'SHOW_PAGE_TRACE'  => true, // 显示页面Trace信息
	'SESSION_TYPE' => 'DB', // session hander类型 默认无需设置 除非扩展了session hander驱动
	'DB_TYPE'=>'mysql',
	'DB_HOST'=>'localhost',
	'DB_NAME'=>'sikcc',
	'DB_USER'=>'root',
	'DB_PWD'=>'580619',
	'DB_PORT'=>'3306',
	'DB_PREFIX'=>'g_',
	'LOAD_EXT_CONFIG' => 'login,group', // 加载扩展配置文件
	'URL_MODEL'=>2,
	'APP_GROUP_LIST' => 'Home,Admin,Group', //项目分组设定
	'DEFAULT_GROUP'  => 'Home', //默认分组
);
?>