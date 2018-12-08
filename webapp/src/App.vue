<template>
  <el-container id="app">
    <el-header class="v-main-header"><Header/></el-header>
    <el-main>
      <div id="main">
        <img alt="Vue logo" src="./assets/logo.png">
        <HelloWorld msg="Welcome to Your Vue.js App"/>
      </div>
    </el-main>
  </el-container>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import Header from './components/Header.vue'

export default {
  name: 'app',
  components: {
    HelloWorld,
    Header
  }
}
</script>

<style lang="scss">
#main {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

html {
  font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI',
    Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

html,
body,
#app.el-container,
.el-menu-vertical {
  height: 100%;
}
#app  > .el-container {
  flex-direction: column;
  .el-header {
    box-sizing: content-box;
  }
  .el-menu {
    border-right: 0;
  }
  .el-main .container {
    min-height: calc(100vh - 110px);
  }
}

*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
}

.v-main-header {
  border-bottom: solid 1px #e6e6e6;
}
</style>
