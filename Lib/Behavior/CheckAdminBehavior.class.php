<?php

/**
 * Description of CheckAdminBehavior
 *
 * @author Ma
 */
class CheckAdminBehavior extends Behavior {

    // 行为参数定义（默认值） 可在项目配置中覆盖
    protected $options = array(
        'URL_ROUTER_ON' => false, // 是否开启URL路由
        'URL_ROUTE_RULES' => array(), // 默认路由规则，注：分组配置无法替代
    );

    // 行为扩展的执行入口必须是run
    public function run(&$return=1) {
        dump(session('user_id'));
    }

}

?>
