<?php

/**
 * Description of registerAction
 *
 * @author Ma
 */
class RegisterAction extends Action {

    //调用模版文件，赋值跳转url
    public function index() {
        if (USER_ID) {
            header('Location: ' . __APP__);
            exit();
        }
        $HTTP_REFERER = $_SERVER['HTTP_REFERER'];
        $this->assign('HTTP_REFERER', $HTTP_REFERER);
        $this->display();
    }

    /**
     * 处理提交数据交付注册
     */
    public function register() {
        $username = $this->_post("username");
        $email = $this->_post("email");
        $password = $this->_post("password");
        $HTTP_REFERER = $this->_post('HTTP_REFERER');
        $registerObj = M('Register');
        $r = $registerObj->register($username, $email, $password);
        if ($r > 0) {
            $this->success('注册成功！', $HTTP_REFERER ? $HTTP_REFERER : __APP__);
        } else {
            switch ($r) {
                case -1:
                    $notice = '数据不合法！';
                    break;
                case -2:
                    $notice = '邮箱已经注册！';
                    break;
                case -3:
                    $notice = '写入数据库失败！';
                    break;
                default:
                    $notice = '请联系管理员！';
                    break;
            }
            $this->error('注册失败！' . $notice);
        }
    }

}

?>
