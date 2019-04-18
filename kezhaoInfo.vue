<template>
  <div>
    <p><img :src="info.img_url1" alt="" style="width:100%;"></p>
    <p><img :src="info.img_url2" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url3" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url4" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url5" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url6" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url7" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url8" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url9" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url10" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url11" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url12" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url13" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url14" alt="" style="width:100%; margin-top:-10px;"></p>
    <p><img :src="info.img_url15" alt="" style="width:100%; margin-top:-10px;margin-bottom:-10px;"></p>
  </div>
</template>
<script>
  export default {
    data(){
      return {
        nid:this.$route.query.nid,
        info:{},
      }
    },
    created(){
      this.findNewsInfo();
    },
    methods:{
      findNewsInfo(){
        var id=this.nid;
        var url="http://127.0.0.1:3000/kezhaoInfo?nid="+id;
        //3.发送ajax请求
        this.axios.get(url).then(result=>{
          //4.获取服务器返回数据保存 info
          //console.log(result.data.data[0]);
          this.info=result.data.data[0];
          //console.log(this.info);
        })     
      }
    }
  }
</script>
<style>
  *{margin:0;padding:0;}
  img{display:block;}
</style>
