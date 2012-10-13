<?php

/**
 * Description of NewGroupModel
 *
 * @author Ma
 */
class NewGroupModel extends Model {

	/**
	 * 申请新建小组，写入新建列表
	 * @param type $data
	 */
	public function newGroup($data) {
		$data['date'] = time();
		$data['master_id'] = USER_ID;
		$r = $this->add($data);
		return $r;
	}

}

?>
