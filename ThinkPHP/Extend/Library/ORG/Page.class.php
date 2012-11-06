<?php

/**
 * 分页类
 * 实例
 * <code>
 * $page = $_REQUEST['page'];
 * $list = M('Topic')->page($page, 10)->where(id>1)->select();
 * import("ORG.Page");
 * $pageObj = new Page(M('Topic_' . $NUM)->where($where)->count(), $page, $num);
 * $pageObj->show();
 * >>>>>>>>>>>>>>>>
 * 在模版的适当位置添加常量 __PAGE__
 * </code>
 */
class Page {

	//每页的数量
	public $num = 10;
	// 当前页书
	public $page = 1;
	//数据总数
	public $count = 0;
	//这个是样式
	public $config = array(
		'div' => '<div class="page" >',
		'count' => '',
		'prev' => '<span class="prev">',
		'next' => '<span class="next">',
		'thispage' => '<span class="thispage">',
		'theme' => '<a class="page_link" ',
	);

	/**
	 * 构造函数
	 * @param type $count 数据总数
	 * @param type $page 当前页书
	 * @param type $num 每页显示的数目
	 */
	public function __construct($count, $page = FALSE, $num = '10') {
		$this->count = $count;
		!$page || $this->page = $page;
		$this->num = $num;
	}

	/**
	 * 定制要显示的样式
	 * @param type $name
	 * @param type $value
	 */
	public function setConfig($name, $value) {
		$this->config[$name] = $value;
	}

	/**
	 * 分页显示输出定义常量__PAGE__
	 * @access public
	 */
	public function show() {
		$pageCount = (int) ($this->count / $this->num);
		if ($this->count % $this->num > 0) {
			$pageCount+=1;
		}
		if ($pageCount <= 1)
			define('__PAGE__', NULL);

		//判断URL模式
		if (C('URL_MODEL') == 0) {
			$param = '&page=';
			$url = array_shift(explode($param, __SELF__, -1));
		} else {
			$param = '?page=';
			$url = array_shift(explode($param, __SELF__, -1));
		}
		$link = '';
		for ($page = 1; $page <= $pageCount; $page++) {
			if ($page == $this->page) {
				if ($page == 1) {
					$prev = $this->config['prev'] . '<前页' . '</span>';
				} else {
					$prev = $this->config['prev'] . $this->config['theme'] . 'href="' . $url . $param . ($page - 1) . '">' . '<前页' . '</a></span>';
				}
				if ($page == $pageCount) {
					$next = $this->config['next'] . '后页>' . '</span>';
				} else {
					$next = $this->config['next'] . $this->config['theme'] . 'href="' . $url . $param . ($page + 1) . '">' . '后页>' . '</a></span>';
				}
				$link .=$this->config['thispage'] . $page . '</span>';
			} else {
				$link .=$this->config['theme'] . 'href="' . $url . $param . $page . '">' . $page . '</a>';
			}
		}
		$div = $this->config['div'] . $prev . $this->config['prev'].=$link . $next . '</div>';
		define('__PAGE__', $div);
		return;
	}

}