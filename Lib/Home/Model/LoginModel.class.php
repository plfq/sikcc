<?php

/**
 * 
 *
 * @author Ma
 */
class LoginModel extends Model {

    protected $autoCheckFields = FALSE;

    /**
     * 登录 统一入口
     * @param type $email
     * @param type $password
     * @return type
     */
    public function login($email, $password) {
        $data['email'] = $email;
        $data['password'] = $password;
        //检查是否合法
        $r = check($data);
        if (!$r) {
            return -1;//数据不合法！
        }
        $userObj = D('User');
        $userObj->create($data);
        $user = $userObj->where($data)->find($data);
        //如果登录失败，检查原因
        if (!$user) {
            $r = $userObj->where(array('email' => $data['email']))->getField('id');
            if ($r) {
                return -2; //密码不正确
            } else {
                return -3; //邮件不存在
            }
        }
        //运行到这一步说明登录正常写入session
        $this->sessionWriter($user['id']);
        return $user;
    }

    /**
     * 写入session保存登录记录到数据库
     * @param type $user_id
     */
    public function sessionWriter($user_id) {
        session('user_id', $user_id); //写入session
        $this->loginLog($user_id); ///写入登录日志
    }

    /**
     * 记录登录日志
     * @param type $user_id
     */
    private function loginLog($user_id) {
        $table = 'Login_' . C('LOGIN_TABLE_NUM'); //查看配文件到 了当前第几张表了 
        $loginObj = D($table);
        $data['user_id'] = $user_id;
        $data['login_ip'] = $_SERVER['REMOTE_ADDR'];
        $data['login_date'] = time();
        $id = $loginObj->add($data);
        //判断这张表已经存储多少数据了
        if ($id >= C('TABLE_COUNT')) {
            //获取已有的配置文件重新写入
            $data['LOGIN_TABLE_NUM'] = C('LOGIN_TABLE_NUM');
            $data['TABLE_COUNT'] = C('TABLE_COUNT');
            saveconfig('login', $data);
        }
    }

}

?>
