<?php

/**
 * 小组相关
 *
 * @author Ma
 */
class GroupAction extends Action {

    /**
     * 申请创建的小组列表
     */
    public function newGroup() {
        $group = D('NewGroup')->select();
        $userObj = D('User');
        foreach ($group as $key => $value) {
            //$group[$key]['masterName'] = $userObj->where(array('id' => $value['master_id']))->getField('username');
        }
        $this->assign('group', $group);
        $this->display();
    }

    /**
     * 查看申请创建的小组的详情
     */
    public function newGroupInfo() {
        $id = $this->_get('id');
        $group = D('NewGroup')->where(array('id' => $id))->find();
        $master = D('User')->where(array('id' => $group['master_id']))->find();
        $this->assign('master', $master);
        $this->assign('group', $group);
        $this->display();
    }

    /**
     * 批准创建小组
     */
    public function pass() {
        $id = $this->_get('id');
        $group = D('NewGroup')->where(array('id' => $id))->find();
        $tags = array_filter(explode(' ', $group['tags']));
        //贴标签
        $rT = D('Group/GTags')->saveTags($tags, $group['id']);
        //写入到group表中！
        $data['name'] = $group['name'];
        $data['master_id'] = $group['master_id'];
        $groupId = D('Group')->add($data);
        $groupId || $this->error('写入小组表出错了');
        $dataEx['group_id'] = $groupId;
        $dataEx['join'] = $group['type'];
        $dataEx['date'] = time();
        $rE = D('GroupEx')->add($dataEx);
        //写入小组简介
        $rA = D('About')->add(array('group_id' => $groupId, 'about' => $group['about']));
        if ($rT || $rE || $rA) {
            D('NewGroup')->where(array('id' => $id))->delete();
            D('Home/Message')->send('恭喜你！' . $group['name'] . '小组创建成功！', $group['master_id'], '1');
            $this->success('OK了！', U('Admin/Group/NewGroup'));
        } else {
            $this->error('Debug吧！亲！');
        }
    }

    /**
     * 拒绝创建小组
     */
    public function refuse() {
        $id = $this->_get('id');
        $r = D('NewGroup')->where(array('id' => $id))->delete();
        if ($r) {
            D('Home/Message')->send('你申请的' . $group['name'] . '小组未通过！', $group['master_id'], '1');
            $this->success('删除了！', U('Admin/Group/NewGroup'));
        } else {
            $this->error('Debug吧！亲！');
        }
    }

}

?>
