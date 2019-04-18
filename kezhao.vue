<template>
  <div class="app-goodlist">
    <!--商品详细信息 start-->
    <div class="goods-item" v-for="item of list">
      <img :src="item.img" @click.prevent="jumpInfo" :data-lid="item.lid"/>
      <h4 style="height:100%;width:90px;">{{item.month}}</h4>
      <div class="info">
        <span class="now" style="float:right;font-size:12px;margin-top:-25px;color:#81d8d0;">摄影师-{{item.sheying}}</span>
      </div>
      <div class="sell">
        <span style="float:right;font-size:12px;color:#81d8d0;">拍摄场景-{{item.style}}</span>
      </div>
    </div>
    <!--商品详细信息 end-->
    <!--加载更多-->
    <button type="button" class="mui-btn mui-btn-primary mui-btn-block mui-btn-outlined" size="large" @click="loadMore">加载更多</button>
  </div>
</template>
<script>
  export default {
    data(){
      return {
        list:[], //模板中显示商品列表
        pno:0    //第几页
      }
    },
    created(){
      //当组件创建成功后立即调用加载下一页方法
      this.loadMore();
    },
    methods:{
      //跳转到商品详情组件
      jumpInfo(e){
        var lid=e.target.dataset.lid;
        //console.log(lid);
        this.$router.push("/kezhaoInfo?nid="+lid);
      },
      //加载下一页数据并且将数据显示在模块上
      loadMore(){
        //0:获取当前页码
        this.pno++;
        //console.log(123);
        //1.创建变量url请求地址
        var url="http://127.0.0.1:3000/getkezhao?pno="+this.pno;
        //2.发送ajax请求
        this.axios.get(url).then(result=>{
          //3.获取服务器返回结果保存data
          //this.list=result.data.data;
          //console.log(this.list);
          //3.获取服务器返回结果 追加list
          //使用concat拼接按钮
          var rows=this.list.concat(result.data.data);
          this.list=rows;
        })
      }
    }
  }
</script>
<style>
  /*外层父元素*/
  .app-goodlist{
    display:flex;    /*弹性布局*/
    flex-wrap:wrap;   /*子元素换行*/
    justify-content:space-between; /*两端对齐*/
    padding:4px;
  }
  /* 文字 */
  .good-ke{
    width:100%;
    height:30px;
    margin-top:2px;
    font-size:20px;
    color:orange;
    line-height:30px;
  }
  /*商品信息*/
  .app-goodlist .goods-item{
    width:48%;  /*商品信息元素宽度*/
    margin:2px 0; /*外补丁*/
    padding:2px;
    display:flex; /*子元素弹性布局*/
    flex-direction:column; /*排列方式：按列*/
    min-height:245px; /*最小高度*/
    margin-bottom:10px;
    border-bottom:1px solid #a9a9a9;
  }
  /*商品图片*/
  .app-goodlist .goods-item img{width:100%;}
  /*商品名称*/
  /*商品价格*/
</style>