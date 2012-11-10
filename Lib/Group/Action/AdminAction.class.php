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

		$groupId = $this->_get('group');
		$groupId || $groupId = $this->_param(3);
		$groupId || $groupId = $this->_post('group');
		if (!D('GroupAdmin')->checkPermission($groupId)) {
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
		$groupId = $groupId = $this->_get('group');
		$groupId || $this->_param(3);

		if (!$groupId) {
			$this->error('缺少必要参数！groupID!');
		}
		$group = D('Group')->where(array('id' => $groupId))->find();
		$groupAbout = D('GAbout')->where(array('group_id' => $groupId))->find();
		$tags = D('GTags')->getGroupTags($groupId, 'string');
		$this->assign('tags', $tags);
		$this->assign('group', $group);
		$this->assign('groupAbout', $groupAbout);
		$this->display();
	}

	public function saveEdit() {
		$groupId = $this->_get('3');
		$groupId || $groupId = $this->_post('group');
		$about = $this->_post('about');
		$tags = array_filter(explode(' ', $this->_post('tags')));
		$rA = M('GAbout')->where(array('group_id' => $groupId))->save(array('about' => $about));
		!$rA || M('GAbout')->where(array('group_id' => $groupId))->save(array('date' => time()));
		$rT = D('GTags')->saveTags($tags, $groupId);
		$rT || $this->error('标签保存出错了！');
		$this->success('保存成功!');
	}

	/**
	 * 小组高级管理
	 * 管理小组高级内容
	 * 个性URL，小组帖子分类，友情小组，违禁词，加入方式，小组相册，分享开启
	 */
	public function advEdit() {
		$groupId = $this->_param(3);
		if (!$groupId) {
			$this->error('缺少必要参数！groupID!');
		}
		$group = D('Group')->where(array('id' => $groupId))->find();
		$groupEx = D('GroupEx')->where(array('group_id' => $groupId))->find();
		//获取小组的帖子分类
		$groupTopicType = D('GroupTopicType')->getTopicType($groupId);
		$this->assign('group', $group);
		$this->assign('groupEx', $groupEx);
		$this->assign('groupTopicType', $groupTopicType);

		$this->display();
	}

	/**
	 * 保存小组高级设置
	 */
	public function saveAdvEdit() {
		$groupId = $this->_post('group');
		$typeName = $this->_post('typeName');
		$typeNameId = $this->_post('typeNameId');
		$r = D('GroupTopicType')->saveTopicType($groupId, $typeName, $typeNameId);
		if ($r) {
			$this->success('保存好了!');
		} else {
			$this->error('保存失败！');
		}
	}

	/**
	 * 修改小组图标
	 * @todo 把这个上传头像的模块转移到公共的统一模块
	 */
	public function icon() {

		$groupId = $this->_param(3);
		$groupId || $groupId = $this->_param('group');
		$groupId || $groupId = $this->_post('group');

		$group = M('Group')->where(array('id' => $groupId))->find();

		$this->assign('group', $group);
		$this->display();
	}

	/**
	 * 编辑小组图标
	 */
	public function editIcon() {

		$groupId = $this->_param(3);
		$groupId || $groupId = $this->_param('group');
		$groupId || $groupId = $this->_post('group');
		import('ORG.UploadFile');
		$upload = new UploadFile(); // 实例化上传类
		$upload->maxSize = 3145728; // 设置附件上传大小
		$upload->allowExts = array('jpg', 'gif', 'png', 'jpeg'); // 设置附件上传类型
		$upload->savePath = './Public/ICON/' . substr($groupId, -1) . '/'; // 设置附件上传目录
		$upload->thumb = TRUE; //开启缩略图
		$upload->thumbFile = $groupId . '_new'; //缩略文件名
		$upload->thumbMaxWidth = '150px';
		$upload->thumbMaxHeight = '450px';
		$upload->thumbRemoveOrigin = TRUE;

		if (!$upload->upload()) {// 上传错误提示错误信息
			$this->error($upload->getErrorMsg());
		} else {// 上传成功 获取上传文件信息
			$info = $upload->getUploadFileInfo();
		}

		$iconNew = substr($groupId, -1) . '/' . $groupId . '_new' . '.' . reset($info)['extension'];
		$groupObj = M('Group');
		$group = $groupObj->where(array('id' => $groupId))->find();
		$this->assign('group', $group);
		$this->assign('iconNew', $iconNew);
		$this->display();
	}

	/**
	 * 保存编辑好的好头像
	 */
	public function saveIcon() {
		$groupId = $this->_param(3);
		$groupId || $groupId = $this->_param('group');
		$groupId || $groupId = $this->_post('group');

		$newicon = $this->_post('iconNew');
		$x1 = $this->_post('x1');
		$y1 = $this->_post('y1');
		$x2 = $this->_post('x2');
		$y2 = $this->_post('y2');
		$width = $this->_post('width');
		$height = $this->_post('height');

		$image = './Public/ICON/' . $newicon; // 原图
		$imgstream = file_get_contents($image);
		$im = imagecreatefromstring($imgstream);
		$x = imagesx($im); //获取图片的宽
		$y = imagesy($im); //获取图片的高

		$bilu = ($x / 150);
		$width = $bilu * $width; //需要截取的宽度
		$height = $width;
		$x1 = $bilu * $x1;
		$y1 = $bilu * $y1;
		if (function_exists("imagecreatetruecolor"))
			$dim = imagecreatetruecolor(100, 100); // 创建目标图gd2
		else
			$dim = imagecreate(100, 100); // 创建目标图gd1

		if ($x <= 20 || $y <= 20)//如果宽或者是长小于20像素就直接全部拉伸到100
			imagecopyresized($dim, $im, 0, 0, 0, 0, 100, 100, $x, $y);
		else
			imagecopyresized($dim, $im, 0, 0, $x1, $y1, 100, 100, $width, $height);
		$savePath = str_replace('_new', '', $image);
		imagejpeg($dim, $savePath);

		$rUN = unlink($image);
		$rADD = M('Group')->where(array('id' => $groupId))->save(array('icon' => ltrim($savePath, './Public/ICON/')));
		if (!$rADD) {
			$this->error('数据库操作报错!');
		}
//		elseif (!$rUN) {
//			$this->error('删除临时文件出错！');
//		}
		$this->success('图标已经保存!', U('index', array('group' => $groupId)));
	}

}

?>
