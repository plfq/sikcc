<?php

/**
 * 小组的帖子分类
 *
 * @author Ma
 */
class GroupTopicTypeModel extends Model {

	/**
	 * 获取小组分类
	 * @param type $groupId
	 */
	public function getTopicType($groupId) {
		$type = $this->where(array('group_id' => $groupId))->find();
		$topicTypeNameObj = M('GroupTopicTypeName');
		$typeName = array();
		for ($i = 1; $i <= 4; $i++) {
			if (!$type['topic_type_' . $i])
				continue;
			$typeName[] = $topicTypeNameObj->where(array('id' => $type['topic_type_' . $i]))->find();
		}
		return $typeName;
	}

	/**
	 * 保存小组帖子分类
	 * @param type $groupId
	 * @param array $typeName
	 * @param array $typeId
	 */
	public function saveTopicType($groupId, $typeName, $typeId = array()) {
		$typeNameObj = M('GroupTopicTypeName');
		$NUM = 1;
		$data = array();

		foreach ($typeName as $key => $value) {
			if (!$value) {
				$data['topic_type_' . $NUM] = 0;
				continue;
			}
			$value = substr($value, 0, 15); //限制长度
			if ($NUM > 4)
				break;
			if ($typeId[$key]) {
				$r = $typeNameObj->where(array('id' => $typeId[$key]))->save(array('name' => $value));
			} else {
				//加入groupId限制，防止跨小组查看
				$r = $typeNameObj->add(array('name' => $value, 'group_id' => $groupId));
				$data['topic_type_' . $NUM] = $r;
			}

			$NUM++;
		}
		if (count($data) < 1) {
			return TRUE;
		}
		$r = $this->where(array('group_id' => $groupId))->save($data);
		if (!$r) {
			$data['group_id'] = $groupId;
			$r = $this->add($data);
		}
		return $r;
	}

}

?>
