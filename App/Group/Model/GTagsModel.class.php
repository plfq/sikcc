<?php

/**
 * 处理标签相关的
 *
 * @author Ma
 */
class GTagsModel extends Model {

	/**
	 * 处理小组相关的标签，
	 * @param type $tags 保存标签的数组
	 * @param type $groupId 小组ID
	 * @return boolean
	 */
	public function saveTags($tags, $groupId) {
		$tags = array_splice(array_filter($tags), 0, 5);

		$ids = $this->addTags($tags);
		$r = $this->tags2group($groupId, $ids);
		return $r;
	}

	/**
	 * 返回标签的ID
	 * @param type $tags
	 * @return type
	 */
	private function addTags($tags) {
		$id = array();
		foreach ($tags as $value) {
			$r = $this->where(array('name' => $value))->getField('id');
			if ($r) {
				$id[] = $r;
			} else {
				$id[] = $this->add(array('name' => $value, 'date' => time()));
			}
		}
		return $id;
	}

	/**
	 * 把标签贴在小组上
	 * @param type $group_id
	 * @param type $tags
	 */
	private function tags2group($groupId, $tags) {
		$groupTagsObj = D('GroupTags');
		//先删除所有的标签
		$return = TRUE;
		$groupTagsObj->where(array('group_id' => $groupId))->delete();
		foreach ($tags as $value) {
			if (!$value)
				continue;
			$r = $groupTagsObj->add(array('group_id' => $groupId, 'tag_id' => $value, 'date' => time()));
			$r || $return = $r;
		}
		return $return;
	}

}

?>
