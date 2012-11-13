<?php

/**
 * 消息模块！
 *
 * @author 马
 */
class MessageAction extends Action {

	//查看消息

	public function __construct() {
		if (!USER_ID) {
			$this->error('请先登录！', U('Login/index'));
		}
	}

	//纸条盒子首页
	public function index() {
		//首先获取最近联系人10个
		$temp = $this->_param('linkman');
		$userId = USER_ID;
		$messageObj = D('Message');
		$userObj = M('User');
		$linkman = $messageObj->getLinkman($userId);
		foreach ($linkman as &$value) {
			$linkID = $value['sender'];
			if ($linkID == $userId)
				$linkID = $value['receiver'];
			$value['lastMessage'] = $messageObj->messagesList($linkID, $userId, 1);
			$value['linkmanId'] = $linkID;
			$value['linkman'] = $userObj->where(array('id' => $linkID))->find();
		}
		

		$temp || $temp = reset($linkman)['receiver'];

		if ($temp == $userId) {
			$temp = reset($linkman)['sender'];
		}

		$listMessage['messages'] = $messageObj->messagesList($temp, $userId, 4);
		$listMessage['mine'] = $userObj->where(array('id' => $userId))->find();
		$listMessage['linkman'] = $userObj->where(array('id' => $temp))->find();
		$this->assign('listMessage', $listMessage);
		$this->assign('linkman', $linkman);
		$this->display();
	}

	/**
	 * 
	 */
	public function sendMessage() {
		$receiver = $this->_post('receiver');
		$content = $this->_post('content');
		$sender = USER_ID;
		$r = D('Message')->send($content, $receiver, $sender);
		if ($r) {
			$this->success('发送成功！');
		} else {
			$this->error('发送失败！');
		}
	}

}
?>