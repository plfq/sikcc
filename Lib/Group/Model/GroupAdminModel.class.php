<?php

/**
 * 小组管理员，主要进行权限验证，添加删除管理员操作！
 * 小组组长默认也添加到这张表中！
 * @author Ma
 */
class GroupAdminModel extends Model {

    //检查是否有管理权限
    public function checkPermission($groupId, $userId = FALSE) {
        if (!USER_ID) {
            return FALSE;
        }
        $userId || $userId = USER_ID;
        return $this->where(array('group_id' => $groupId, 'user_id' => $userId))->find();
    }

}

?>
