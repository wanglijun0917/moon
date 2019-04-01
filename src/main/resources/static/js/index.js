// **********************************************//
// index 客户端脚本
//
// @author huayu
// @date 2018-10-30
// **********************************************//

var vm = new Vue({
	el: '#app',
	data: {},
	methods: {
		/**
		 *
		 */
		test_click: function() {
			console.log(vm.$refs.centerRef);
//			Artery.setStyle(element,styleName,styleValue)
			Artery.addClass(vm.$refs.centerRef,"fd-center");
			Artery.message.success("范德萨发生大幅度");
		}
	}
})