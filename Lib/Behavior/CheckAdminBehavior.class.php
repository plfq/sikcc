<?php

/**
 * Description of CheckAdminBehavior
 *
 * @author Ma
 */
class CheckAdminBehavior extends Behavior {

    // 行为参数定义（默认值） 可在项目配置中覆盖
    protected $options = array(
    );

    // 行为扩展的执行入口必须是run
    public function run(&$retrun) {
        if (!USER_ID && GROUP_NAME === 'Admin') {
            redirect(U('Home/Login/index'), '3', '请先登录！');
        }
    }

}

?>
