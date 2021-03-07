<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import EmployeeIndexPage from 'EmployeeIndexPage.vue'
import EmployeeDetailPage from 'EmployeeDetailPage.vue'
import EmployeeNewPage from 'EmployeeNewPage.vue'
import EmployeeEditPage from 'EmployeeEditPage.vue'

const router = new VueRouter({
  routes: [
    { path: '/',
      component: EmployeeIndexPage  },
    { path: '/employees/:id(\\d+)',
      name: 'EmployeeDetailPage',
      component: EmployeeDetailPage  },
    { path: '/employees/new',
      name: 'EmployeeNewPage',
      component: EmployeeNewPage    },
    { path: '/employees/:id(\\d+)/edit',
      name: 'EmployeeEditPage',
      component: EmployeeEditPage   }
  ]
})

Vue.use(VueRouter)

export default {
  router
}
</script>

<style scoped>
</style>