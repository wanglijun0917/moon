// **********************************************//
// 消息抓取系统-数据库配置列表 客户端脚本
// 
//
// @author huayu
// @date 2018年10月30日 13:58
// **********************************************//
var vm = new Vue({
	el: '#app',
	mixins: [],
	data: {
		rs: [],
		popUrl: ''
	},
	methods: {
		loadData: function(queryInfo) {
			var _this = this;
			Artery.loadPageData('mf/dbconfig/mfDbconfigList/rs', queryInfo)
				.then(function(data) {
					_this.rs = data;
				}).
			catch (function(error) {
				console.error(error.message);
			});
		},

		goToPage: function(url) {
			Artery.open({
				url: url,
				targetType: '_blank'
			});
		},
		addMfDbconfig: function() {
			this.goToPage('mf/dbconfig/mfDbconfigEdit/insert?' + new Date());
		},
		editMfDbconfig: function(id) {
			this.goToPage('mf/dbconfig/mfDbconfigEdit/update/' + id + "?" + new Date());
		},
		mfDbconfigDetail: function(id) {
			this.goToPage('mf/dbconfig/mfDbconfigDetail/' + id);
		},
		deleteMfDbconfig: function(id) {
			var _this = this;
			this.$Modal.confirm({
				title: '提示',
				content: "确认删除当前数据?",
				onOk: function() {
					$http.post('mf/dbconfig/mfDbconfigList/doDelete/' + id)
						.then(function(data) {
							Artery.message.info('删除成功');
							_this.$refs.table_mfDbconfig.reloadData();
						}).
					catch (function(error) {
						Artery.message.error(error.message);
					});
				}
			});
		},
		/**
		 *
		 */
		click_test: function() {
			vm.$refs.textref.text='没发顺丰';
		}
	}
});