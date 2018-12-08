<template>
  <div>
    <el-menu
      :default-active="activeIndex"
      class="v-menu-header"
      mode="horizontal"
      @select="handleSelect" >
      <div class="v-menu-header-logo">
        <el-menu-item index="0">
          <img
            class="logo-image"
            src="../assets/logo.png"
            alt="logo">
          <span class="logo-name">Jobsite</span>
        </el-menu-item>
      </div>
      <el-menu-item index="1">Items 1</el-menu-item>
      <el-submenu index="2">
        <template slot="title">Items 2</template>
        <el-menu-item index="2-1">item one</el-menu-item>
        <el-menu-item index="2-2">item two</el-menu-item>
        <el-menu-item index="2-3">item three</el-menu-item>
        <el-submenu index="2-4">
          <template slot="title">item four</template>
          <el-menu-item index="2-4-1">item one</el-menu-item>
          <el-menu-item index="2-4-2">item two</el-menu-item>
          <el-menu-item index="2-4-3">item three</el-menu-item>
        </el-submenu>
      </el-submenu>
      <el-menu-item
        index="3"
        disabled>Items 3</el-menu-item>
      <el-menu-item index="4">
        <a href="/">Items 4</a>
      </el-menu-item>
    </el-menu>
  </div>
</template>

<script>
export default {
  data () {
    return {
      activeIndex: '1'
    }
  },
  methods: {
    handleSelect (e) {
      console.log('selected', e)
    }
  }
}
</script>

<style lang="scss" scoped>
.v-menu-header-logo {
  width: auto;
  height: 100%;
  float: left;
  overflow: hidden;
  padding-left: 20px;
  .logo-image {
    width: 40px;
    height: 40px;
  }
  .logo-name {
    font-size: 18px;
  }
  .el-menu-item {
    display: inline-block;
  }
  .el-menu-item:hover {
    background: transparent;
  }
}
</style>
