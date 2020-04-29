/*!
 * ======================================================
 * FeedBack Template For MUI (http://dev.dcloud.net.cn/mui)
 * =======================================================
 * @version:1.0.0
 * @author:cuihongbao@dcloud.io
 */
(function() {
	var index = 1;
	var size = null;
	var imageIndexIdNum = 0;
	var starIndex = 0;
	var feedback = {
		theme: document.getElementById('theme'),
		descript: document.getElementById('descript'),
		datatime: document.getElementById('datatime'),
		dataaddress: document.getElementById('dataaddress'),
		datapoint: document.getElementById('datapoint'),
		imageList: document.getElementById('image-list'),
		phone: document.getElementById('phone'),
		publishaddress: document.getElementById('publishaddress'),
		submitBtn: document.getElementById('submit')
	};
	var myDate = new Date();
	Date.prototype.Format = function(format) {

		var o = {

			"M+": this.getMonth() + 1, //month 

			"d+": this.getDate(), //day 

			"h+": this.getHours(), //hour 

			"m+": this.getMinutes(), //minute 

			"s+": this.getSeconds(), //second 

			"q+": Math.floor((this.getMonth() + 3) / 3), //quarter 

			"S": this.getMilliseconds() //millisecond 

		}

		if(/(y+)/.test(format)) {

			format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));

		}

		for(var k in o) {

			if(new RegExp("(" + k + ")").test(format)) {

				format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));

			}

		}

		return format;

	}

	var connectIp = plus.storage.getItem('connectIp');
	var url = connectIp + 'TimeAnalysisService/releaseActivity.php';
	//	var url = 'https://service.dcloud.net.cn/feedback';
	feedback.files = [];
	feedback.uploader = null;
	feedback.deviceInfo = null;
	mui.plusReady(function() {
		//设备信息，无需修改
		feedback.deviceInfo = {
			appid: plus.runtime.appid,
			imei: plus.device.imei, //设备标识
			images: feedback.files, //图片文件
			p: mui.os.android ? 'a' : 'i', //平台类型，i表示iOS平台，a表示Android平台。
			md: plus.device.model, //设备型号
			app_version: plus.runtime.version,
			plus_version: plus.runtime.innerVersion, //基座版本号
			os: mui.os.version,
			net: '' + plus.networkinfo.getCurrentType()
		}
	});
	/**
	 *提交成功之后，恢复表单项 
	 */
	feedback.clearForm = function() {
		feedback.theme.value = '';
		feedback.descript.value = '';
		feedback.datatime.value = '';
		feedback.dataaddress.value = '';
		feedback.phone.value = '';
		feedback.imageList.innerHTML = '';
		feedback.newPlaceholder();
		feedback.files = [];
		index = 0;
		size = 0;
		imageIndexIdNum = 0;
		starIndex = 0;
	};
	feedback.getFileInputArray = function() {
		return [].slice.call(feedback.imageList.querySelectorAll('.file'));
	};
	feedback.addFile = function(path) {
		feedback.files.push({
			name: "images" + index,
			path: path,
			id: "img-" + index
		});
		index++;
	};
	/**
	 * 初始化图片域占位
	 */
	feedback.newPlaceholder = function() {
		var fileInputArray = feedback.getFileInputArray();
		if(fileInputArray &&
			fileInputArray.length > 0 &&
			fileInputArray[fileInputArray.length - 1].parentNode.classList.contains('space')) {
			return;
		};
		imageIndexIdNum++;
		var placeholder = document.createElement('div');
		placeholder.setAttribute('class', 'image-item space');
		var up = document.createElement("div");
		up.setAttribute('class', 'image-up')
		//删除图片
		var closeButton = document.createElement('div');
		closeButton.setAttribute('class', 'image-close');
		closeButton.innerHTML = 'X';
		closeButton.id = "img-" + index;
		//小X的点击事件
		closeButton.addEventListener('tap', function(event) {
			setTimeout(function() {
				for(var temp = 0; temp < feedback.files.length; temp++) {
					if(feedback.files[temp].id == closeButton.id) {
						feedback.files.splice(temp, 1);
					}
				}
				feedback.imageList.removeChild(placeholder);
			}, 0);
			return false;
		}, false);

		//
		var fileInput = document.createElement('div');
		fileInput.setAttribute('class', 'file');
		fileInput.setAttribute('id', 'image-' + imageIndexIdNum);
		fileInput.addEventListener('tap', function(event) {
			var self = this;
			var index = (this.id).substr(-1);
			plus.gallery.pick(function(e) {
				//				console.log("event:"+e);
				var name = e.substr(e.lastIndexOf('/') + 1);
				console.log("name:" + name);

				plus.zip.compressImage({
					src: e,
					dst: '_doc/' + name,
					overwrite: true,
					quality: 50
				}, function(zip) {
					size += zip.size
					console.log("filesize:" + zip.size + ",totalsize:" + size);
					if(size > (10 * 1024 * 1024)) {
						return mui.toast('文件超大,请重新选择~');
					}
					if(!self.parentNode.classList.contains('space')) { //已有图片
						feedback.files.splice(index - 1, 1, {
							name: "images" + index,
							path: e
						});
					} else { //加号
						placeholder.classList.remove('space');
						feedback.addFile(zip.target);
						feedback.newPlaceholder();
					}
					up.classList.remove('image-up');
					placeholder.style.backgroundImage = 'url(' + zip.target + ')';
				}, function(zipe) {
					mui.toast('压缩失败！')
				});

			}, function(e) {
				mui.toast(e.message);
			}, {});
		}, false);
		placeholder.appendChild(closeButton);
		placeholder.appendChild(up);
		placeholder.appendChild(fileInput);
		feedback.imageList.appendChild(placeholder);
	};
	feedback.newPlaceholder();
	feedback.submitBtn.addEventListener('tap', function(event) {
		var username = plus.storage.getItem('username');
		var createtime = myDate.Format("yyyy-MM-dd hh:mm:ss");
		
		if(username == null) {
			return mui.toast('请先登录！');
		}
		if(feedback.theme.value == '') {
			return mui.toast('主题不能为空！');
		}
		if(feedback.descript.value == '') {
			return mui.toast('描述不能为空！');
		}
		if(feedback.descript.value.length > 200) {
			return mui.toast('描述太长,请重新填写~')
		}
		if(feedback.datatime.value == '') {
			return mui.toast('时间不能为空！');
		}
		if(feedback.dataaddress.value == '') {
			return mui.toast('地址不能为空！');
		}
		if(feedback.files.length==0){
			return mui.toast('请添加图片！');
		}
		if(feedback.publishaddress.value == '') {
			return mui.toast('请允许定位您的位置！');
		}
		if(!(/^1[3|4|5|7|8][0-9]\d{4,8}$/.test(feedback.phone.value))) {
			return mui.toast('手机号码不正确！');
		}
		

		//判断网络连接
		if(plus.networkinfo.getCurrentType() == plus.networkinfo.CONNECTION_NONE) {
			return mui.toast("连接网络失败，请稍后再试");
		}
		feedback.send(mui.extend({}, feedback.deviceInfo, {
			username: username,
			theme: feedback.theme.value,
			descript: feedback.descript.value,
			datatime: feedback.datatime.value,
			dataaddress: feedback.dataaddress.value,
			datapoint: feedback.datapoint.value,
			createtime: createtime,
			phone: feedback.phone.value,
			publishaddress: feedback.publishaddress.value,
			images: feedback.files,
			score: '' + starIndex
		}))
	}, false)
	feedback.send = function(content) {
		feedback.uploader = plus.uploader.createUpload(url, {
			method: 'POST'
		}, function(upload, status) {
			//console.log("upload cb:" + upload.responseText);
			if(status == 200) {
//				var data = JSON.parse(upload.responseText);
//				//上传成功，重置表单
//				if(data.ret === 0 && data.desc === 'Success') {
//					console.log("upload success");
//				}
			} else {
				console.log("upload fail");
			}

		});
		//添加上传数据
		mui.each(content, function(index, element) {
			if(index !== 'images') {
				console.log("addData:" + index + "," + element);
				feedback.uploader.addData(index, element)
			}
		});
		//添加上传文件
		mui.each(feedback.files, function(index, element) {
			var f = feedback.files[index];
			console.log("addFile:" + JSON.stringify(f));
			feedback.uploader.addFile(f.path, {
				key: f.name
			});
		});
		//开始上传任务
		feedback.uploader.start();
		mui.alert("感谢发布，等待审核...", "发布反馈", "确定", function() {
			feedback.clearForm();
		});
	};

	//选择快捷输入
	mui('.mui-popover').on('tap', 'li', function(e) {
		document.getElementById("descript").value = document.getElementById("descript").value + this.children[0].innerHTML;
		mui('.mui-popover').popover('toggle');
	})
})();