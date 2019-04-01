// **********************************************//
// 消息抓取系统-数据库配置编辑 客户端脚本
// 
//
// @author huayu
// @date 2018年10月30日 13:58
// **********************************************//
var vm = new Vue({
  el: '#app',
  mixins: [],
  data: {
    rs : rs
  },
  methods: {
    submit: function() {
      this.$refs.form.submit('mf/dbconfig/mfDbconfigEdit/doUpdate').then(function(result){
        Artery.message.info('保存成功');
        window.opener.vm.$refs.table_mfDbconfig.reloadData();
        window.opener.vm.$refs.mfDbconfigWidiow.close();
      }).catch(function(error){
        Artery.message.error(error.message);
      });
    }
  }
});
