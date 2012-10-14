<?php

/**
 * 小组管理操作！小组的管理都在这个Action中完成，自动验证身份！
 *
 * @author Ma
 */
class AdminAction extends Action {

    /**
     * 自动检查用户是否有权限
     */
    Public function _initialize() {
        
        if (!D('GroupAdmin')->checkPermission($this->_get('group'))) {
            $this->error('蛋子！你木有权限！');
        }
    }

    /**
     * 默认跳转到编辑页面
     */
    public function index() {
        redirect(U('Group/Admin/edit', array('group' => $this->_get('group'))));
    }

    /**
     * 编辑小组资料
     * 编辑：
     * 名称，简介，图标，标签，成员的昵称。
     */
    public function edit() {
        $groupId = $this->_get('group');
        if (!$groupId) {
            $this->error('缺少必要参数！groupID!');
        }
        $group = D('Group')->find(array('id' => $groupId));
        $groupAbout = D('GAbout')->find(array('group_id' => $groupId));
        $groupEx = D('GroupEx')->find(array('group_id' => $groupId));
        $this->assign($group, 'group');
        $this->assign($groupAbout, 'groupAbout');
        $this->assign($groupEx, 'groupEx');
    }

    /**
     * 小组高级管理
     * 管理小组高级内容
     * 个性URL，小组帖子分类，友情小组，违禁词，加入方式，小组相册，分享开启
     */
    public function advEdit() {
        $groupId = $this->_get('group');
        if (!$groupId) {
            $this->error('缺少必要参数！groupID!');
        }
        $group = D('Group')->find(array('id' => $groupId));
        $groupAbout = D('GAbout')->find(array('group_id' => $groupId));
        $groupEx = D('GroupEx')->find(array('group_id' => $groupId));
        //获取小组的帖子分类
        $groupTopicType = D('GroupTopicType')->getTopicType($groupId);
        $this->assign('group', $group);
        $this->assign('groupAbout', $groupAbout);
        $this->assign('groupEx', $groupEx);
        $this->assign('groupTopicType', $groupTopicType);
        $this->display();
    }

    public function saveAdvEdit() {
        $groupId = $this->_post('groupId');
        $typeName = array_filter($this->_post('typeName'));
        $typeNameId = array_filter($this->_post('typeNameId'));
        $r = D('GroupTopicType')->saveTopicType($groupId, $typeName, $typeNameId);
        if ($r) {
            $this->success('保存好了!');
        } else {
            $this->error('保存失败！');
        }
    }

}

?>
