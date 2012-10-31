<?php

/**
 * 小组成员相关操作
 *
 * @author Ma
 */
class MemberAction extends Action {

    /**
     * 用户加入小组
     */
    public function join() {
        $groupId = $this->_get('group');
        if (!USER_ID || !$groupId) {
            $this->error('搞毛啊！！去登陆吧！');
        } else {
            $r = D('Member')->addMember($groupId);
            if ($r) {
                $this->success('好了！发帖子吧！');
            } else {
                $this->error('没有加进来！');
            }
        }
    }

}

?>
