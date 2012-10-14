<?php

/**
 * 成员模块！
 * 数据库表名解释：
 * MemberG表示小组从这里读取，
 * MemberU表示用户从这里读取
 * 多表后缀_N
 * @author Ma
 */
class MemberModel extends Model {

    /**
     * 
     * @param type $groupId
     * @param type $userId
     * @return boolean
     */
    public function is_member($groupId, $userId = FALSE) {
        $userId || $userId = USER_ID;
        if (!$userId)
            return FALSE;
        //需要分为多张表的时候就用UserId的首位数字最为表后缀！
        //暂时不分表

        return M('MemberG')->find(array('group_id' => $groupId, 'user_id' => $userId));
    }

    public function addMember($groupId, $userId = FALSE) {
        $userId || $userId = USER_ID;
        $rG = M('MemberG')->add(array('group_id' => $groupId, 'user_id' => $userId));
        if ($rG) {
            return M('MemberU')->add(array('group_id' => $groupId, 'user_id' => $userId));
        } else {
            return FALSE;
        }
    }

}

?>
