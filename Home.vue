<template>
  <div class="hello app-home">
    <!--轮播图 mint-ui -->
    <mt-swipe>
      <mt-swipe-item v-for="item of navlist">
        <img :src="item.img_url" />
      </mt-swipe-item>
    </mt-swipe>
    <!--九宫格 mui -->
    <ul class="mui-table-view mui-grid-view mui-grid-9">
		  <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3" v-for="item of gridlist">
        <a href="#" @click.prevent="jump" :data-id="item.id">
          <img :src="item.img_url" @click.prevent="jump" :data-id="item.id" style="margin:0 auto;"/>
		      <div class="mui-media-body" style="color:#81D8D0;">{{item.title}}</div>
        </a>
      </li>
    </ul> 
  </div>
</template>
<script>
export default {
  data(){
    return{
      navlist:[], //轮播图列表
      gridlist:[] //保存九宫格数组
    }
  },
  created(){
    this.handleImage();
    this.handleGrid();
  },
  methods:{
    //Home.vue
    jump(e){
      var id=e.target.dataset.id;
      //console.log(id);
      var path="/";
      if(id==6){
        path="/NewsList";
      }else if(id==1){
        path="/kezhao"
      }else if(id==4){
        path="/weizhi"
      }else if(id==3){
        path="/onenew"
      }
      //console.log(123);
      this.$router.push(path);
    },
    //加载轮播图的数据
    handleImage(){
      //1.发送ajax获取轮播图数据
      var url="http://127.0.0.1:3000/imglist";
      this.axios.get(url).then(result=>{
        //2.获取返回结果
        //console.log(result.data.data);
        //3.保存data属性中
        this.navlist=result.data.data;
      })
    },
    //加载九宫格的数据
    handleGrid(){
      //1.发送ajax获取九宫格数据
      var url="http://127.0.0.1:3000/grid";
      this.axios.get(url).then(result=>{
        //2.获取返回数据
        //console.log(result.data);
        //3.保存gridlist
        this.gridlist=result.data;
      })
    }
  }
}
</script>
<style>
  .hello{
    width:100%;
    height:100%;
  }
  .app-home .mint-swipe{ height:200px;width:100%;}
  .app-home .mint-swipe img{ height:100%;width:100%;}
  /*九宫格图片的宽度，逻辑像素*/
  .app-home .mui-grid-9 img{
    width:60px;
    height:60px;
  }
  /*九宫格背景色 白色*/
  .app-home .mui-grid-view.mui-grid-9{
    background-color:white;
  }
</style>
